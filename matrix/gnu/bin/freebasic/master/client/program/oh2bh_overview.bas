#inclib "crt/server.h"
#inclib "crt/lives.h"
#inclib "crt/revival.h"
#inclib "crt/resurrect.h"
#inclib "crt/network.h"
#inclib "crt/connection.h"
#inclib "crt/connect.h"
#inclib "crt/services.h"
#inclib "crt/matrix.h"

#include "crt/string.bi"
#include "crt/stdio.bi"
#include "crt/stdlib.bi"

#lang "fblite"
#if 0

'' the name of the project to which the project belongs
declare function project (byref overview as string, byref names as string, byref names as string, byref items as string) as string


function main() as void
    dim project_name as string
    dim overview as string
    dim names as string
    dim items as string

    project_name = "MyProject"
    overview = "This is a sample project."
    names = "John Doe, Jane Smith, Mark Johnson"
    items = "Task 1, Task 2, Task 3"

    dim project_info as string
    project_info = project(overview, names, items, "")
    print project_info
    print ""

    dim task_list as string
    task_list = "Task List:"
    print task_list
    print "--------------------"
    print items
    print ""

    dim task_count as integer
    task_count = count_tasks(items)
    print "Number of tasks: " & task_count
    print ""

    dim completed_tasks as integer
    completed_tasks = count_completed_tasks(items)
    print "Number of completed tasks: " & completed_tasks
    print ""

    dim incomplete_tasks as integer
    incomplete_tasks = count_incomplete_tasks(items)
    print "Number of incomplete tasks: " & incomplete_tasks
    print ""

    dim total_hours as integer
    total_hours = calculate_total_hours(items)
    print "Total hours spent on tasks: " & total_hours
    print ""

    dim average_hours_per_task as float
    average_hours_per_task = calculate_average_hours_per_task(items)
    print "Average hours per task: " & average_hours_per_task
    print ""

    dim longest_task as string
    longest_task = find_longest_task(items)
    print "Longest task: " & longest_task
    print ""

    dim shortest_task as string
    shortest_task = find_shortest_task(items)
    print "Shortest task: " & shortest_task
    print ""
    dim most_recent_task as string
    most_recent_task = find_most_recent_task(items)
    print "Most recent task: " & most_recent_task
    print ""
    dim least_recent_task as string
    least_recent_task = find_least_recent_task(items)
    print "Least recent task: " & least_recent_task
    print ""
    dim earliest_start_date as string
    earliest_start_date = find_earliest_start_date(items)
    print "Earliest start date: " & earliest_start_date
    print ""
    dim latest_end_date as string
    latest_end_date = find_latest_end_date(items)
    print "Latest end date: " & latest_end_date
    print ""
    dim most_recent_update as string
    most_recent_update = find_most_recent_update(items)
    print "Most recent update: " & most_recent_update
    print ""
    dim least_recent_update as string
    least_recent_update = find_least_recent_update(items)
    print "Least recent update: " & least_recent_update
    print ""
    dim highest_priority_task as string
    highest_priority_task = find_highest_priority_task(items)
    print "Highest priority task: " & highest_priority_task
    print ""
    dim lowest_priority_task as string
    lowest_priority_task = find_lowest_priority_task(items)
    print "Lowest priority task: " & lowest_priority_task
    print ""
    dim most_recent_priority_update as string
    most_recent_priority_update = find_most_recent_priority_update(items)
    print "Most recent priority update: " & most_recent_priority_update
    print ""
    dim least_recent_priority_update as string
    least_recent_priority_update = find_least_recent_priority_update(items)
    print "Least recent priority update: " & least_recent_priority_update
    print ""
    dim most_recent_deadline as string
    most_recent_deadline = find_most_recent_deadline(items)
    print "Most recent deadline: " & most_recent_deadline
    print ""
    dim least_recent_deadline as string
    least_recent_deadline = find_least_recent_deadline(items)
    print "Least recent deadline: " & least_recent_deadline
    print ""
end function 

function count_tasks(byref tasks as string) as integer
    dim count as integer
    count = split(tasks, ", ", count).count
    count_tasks = count
    return count
end function


function count_completed_tasks(byref tasks as string) as integer
    dim completed_tasks as integer
    completed_tasks = 0
    dim task_list as variant
    task_list = split(tasks, ", ", count)
    for i = 1 to UBound(task_list)
    dim task as string
    task = task_list(i)
    if instr(task, " (completed)") > 0 then
    completed_tasks = completed_tasks + 1
    end if
    next i
    count_completed_tasks = completed_tasks
    return count_completed_tasks
end function

function count_incomplete_tasks(byref tasks as string) as integer
    dim incomplete_tasks as integer
    incomplete_tasks = 0

    dim task_list as variant
    task_list = split(tasks, ", ", count)
    for i = 1 to UBound(task_list)
    dim task as string
    task = task_list(i)
    if instr(task, " (completed)") = 0 then
    incomplete_tasks = incomplete_tasks + 1
    end if
    next i
    count_incomplete_tasks = incomplete_tasks
    return count_incomplete_tasks
end function

function calculate_total_hours(byref tasks as string) as integer
    dim total_hours as integer
    total_hours = 0
    dim task_list as variant
    task_list = split(tasks, ", ", count)
    for i = 1 to UBound(task_list)
    dim task as string
    task = task_list(i)
    dim hours as integer
    hours = int(mid(task, instr(task, " (") + 2, instr
     task, "(") - instr(task, " (") - 2))
     total_hours = total_hours + hours
     end if
     next i
     calculate_total_hours = total_hours
     return calculate_total_hours
end function
end 
#else 
#define calculate_total_hours 0
#define count_tasks 0
#define count_completed_tasks 0
#define count_incomplete_tasks 0
#define find_longest_task 0
#define find_shortest_task 0
#define find_most_recent_task 0
#define find_least_recent_task 0
#define find_earliest_start_date 0
#define find_latest_end_date 0
#define find_most_recent_update 0
#define find_least_recent_update 0
#define find_highest_priority_task 0
#define find_lowest_priority_task 0
#define find_most_recent_priority_update 0
#define find_least_recent_priority_update 0
#define find_most_recent_deadline 0
#define find_least_recent_deadline 0
#endif







