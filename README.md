# MineSplit by Ctarron

A LiveSplit-like data pack that provides a timer for speedruns in the sidebar.

## Features
- Timer.
- PB.
- Difference from PB.
- Gold splits.
- Menu.
- Create custom splits.
- Optional [data pack]() that adds the menu to the quick actions dialogs.

### Commands

All of the following commands can be accessed from the menu.

#### Menu
To access the menu without the optional data pack.

    /function ctarron.splits:menu

#### Create splits
To create new splits.
There are two avaliable options

To make the new split the last one

    /function ctarron.splits:splits/create {name: "SPLIT_NAME"}

To insert it in the desired positon

    /function ctarron.splits:splits/insert {name: "SPLIT_NAME", index: (the number of splits to insert after)}

Clear all splits and times

    /function ctarron.splits:splits/clear

Start run. If there is a run in progress it resets.

    /function ctarron.splits:start

Reset current run

    /function ctarron.splits:setup

Next split

    /function ctarron.splits:splits/next
