import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';
import 'package:habit_tracker/features/habit/presentation/blocs/habit-bloc/habits_bloc.dart';
import 'package:habit_tracker/inject_container.dart';
import 'package:uuid/uuid.dart';

class AddEditHabitScreen extends StatefulWidget {
  final Habit? habit;
  const AddEditHabitScreen({super.key, this.habit});

  @override
  State<AddEditHabitScreen> createState() => _AddEditHabitScreenState();
}

class _AddEditHabitScreenState extends State<AddEditHabitScreen> {
  final _formKey = GlobalKey<FormState>();
  final _uuid = const Uuid();
  late TextEditingController _nameCtrl;
  late TextEditingController _descCtrl;
  RecurrenceType _recurrence = RecurrenceType.daily;
  int? _interval;
  List<bool> _daysChecked = List.filled(7, false);

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.habit?.name ?? '');
    _descCtrl = TextEditingController(text: widget.habit?.description ?? '');
    if (widget.habit != null) {
      _recurrence = widget.habit!.recurrenceType;
      _interval = widget.habit!.interval;
      widget.habit!.daysOfWeek?.forEach((d) => _daysChecked[d] = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.habit != null;
    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? 'Edit Habit' : 'Add Habit')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(labelText: 'Habit Name'),
                validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
              ),
              TextFormField(
                controller: _descCtrl,
                decoration: const InputDecoration(
                  labelText: 'Description (opt)',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Recurrence'),
              DropdownButton<RecurrenceType>(
                value: _recurrence,
                items:
                    RecurrenceType.values
                        .map(
                          (e) =>
                              DropdownMenuItem(value: e, child: Text(e.name)),
                        )
                        .toList(),
                onChanged: (v) => setState(() => _recurrence = v!),
              ),
              if (_recurrence == RecurrenceType.everyXDays) ...[
                TextFormField(
                  initialValue: _interval?.toString(),
                  decoration: const InputDecoration(labelText: 'Every X days'),
                  keyboardType: TextInputType.number,
                  validator:
                      (v) => (v == null || v.isEmpty) ? 'Enter days' : null,
                  onSaved: (v) => _interval = int.tryParse(v!),
                ),
              ],
              if (_recurrence == RecurrenceType.weekly)
                ...List.generate(7, (i) {
                  return CheckboxListTile(
                    title: Text(
                      ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][i],
                    ),
                    value: _daysChecked[i],
                    onChanged: (v) => setState(() => _daysChecked[i] = v!),
                  );
                }),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    final newHabit = Habit(
                      id: isEdit ? widget.habit!.id : _uuid.v4(),
                      name: _nameCtrl.text.trim(),
                      description: _descCtrl.text.trim(),
                      recurrenceType: _recurrence,
                      interval: _interval,
                      daysOfWeek:
                          _recurrence == RecurrenceType.weekly
                              ? [
                                for (int i = 0; i < 7; i++)
                                  if (_daysChecked[i]) i,
                              ]
                              : null,
                      creationDate: DateTime.now(),
                    );
                    sl<HabitBloc>().add(
                      isEdit
                          ? HabitEvent.updateHabit(newHabit)
                          : HabitEvent.addHabit(newHabit),
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text(isEdit ? 'Update' : 'Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
