# Maintenance Window Recurrence

You can define the frequency at which a maintenance window recurs using daily, weekly, or monthly schedules. Here’s how to format each schedule type:

## Daily Schedule
- **Format**: `recurEvery: [Frequency as integer]['Day(s)']`
- If no frequency is provided, it defaults to 1.
- **Examples**:
  - `recurEvery: Day` (recurs every day)
  - `recurEvery: 3Days` (recurs every 3 days)

## Weekly Schedule
- **Format**: `recurEvery: [Frequency as integer]['Week(s)'] [Optional: comma-separated list of weekdays (e.g., Monday-Sunday)]`
- **Examples**:
  - `recurEvery: 3Weeks` (recurs every 3 weeks)
  - `recurEvery: Week Saturday,Sunday` (recurs every week on Saturday and Sunday)

## Monthly Schedule
- **Two possible formats**:
  1. `recurEvery: [Frequency as integer]['Month(s)'] [Comma-separated list of month days]`
  2. `recurEvery: [Frequency as integer]['Month(s)'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday (e.g., Monday-Sunday)] [Optional Offset (Number of days)]`

- The offset value must be between -6 and 6, inclusive.

- **Examples**:
  - `recurEvery: Month` (recurs every month)
  - `recurEvery: 2Months` (recurs every 2 months)
  - `recurEvery: Month day23,day24` (recurs monthly on the 23rd and 24th)
  - `recurEvery: Month Last Sunday` (recurs on the last Sunday of every month)
  - `recurEvery: Month Fourth Monday` (recurs on the fourth Monday of every month)
  - `recurEvery: Month Last Sunday Offset-3` (recurs on the Sunday before the last Sunday of every month)
  - `recurEvery: Month Third Sunday Offset6` (recurs 6 days after the third Sunday of every month)


<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->

**Issues**

If required only working version for reboot:

https://github.com/hashicorp/terraform-provider-azurerm/issues/20684


## License

**Copyright:** Schuberg Philis

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```