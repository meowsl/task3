SELECT stud_groups.gr_name, even_week.type_week, week_day.day_name, time_schedule.start_time, disciplines.discip_name, lesson_type.less_type, auditors.audit_num, teachers.fio FROM schedule_stud
JOIN stud_groups ON schedule_stud.group_id = stud_groups.group_id
JOIN even_week ON schedule_stud.type_week_id = even_week.type_week_id
JOIN week_day ON schedule_stud.day_id = week_day.day_id
JOIN time_schedule ON schedule_stud.lesson_num_id = time_schedule.lesson_id
JOIN disciplines ON schedule_stud.discip_id = disciplines.discip_id
JOIN lesson_type ON schedule_stud.less_id = lesson_type.less_id
JOIN auditors ON schedule_stud.audit_id = auditors.audit_id
JOIN teachers ON schedule_stud.teach_id = teachers.teach_id
WHERE stud_groups.group_id = 5;
