# WorldEdit In-Game Command Guides

Run `/function worldedit:guides` for a synchronized white shulker with
one written book for every public WorldEdit command. Every page below is under
Minecraft's 256-character page limit.

## Axe Command

```text
AXE COMMAND

/function worldedit:axe

Gives the vanilla wooden WorldEdit selection axe. It works in Survival and Creative.
```

```text
Left-click a block for Pos 1. Right-click a block for Pos 2. Crouch-right-click with the axe to clear the selection.
```

## Clear Command

```text
CLEAR COMMAND

/function worldedit:clear

Removes your current selection and its visible outline. It also cancels an unconfirmed paste preview.
```

## Pos 1 Command

```text
POS 1 COMMAND

/function worldedit:pos1

Sets Pos 1 to the block containing your feet. This is an alternative to left-clicking with the axe.
```

## Pos 2 Command

```text
POS 2 COMMAND

/function worldedit:pos2

Sets Pos 2 to the block containing your feet and completes the region outline.
```

## Copy Command

```text
COPY COMMAND

/function worldedit:copy

Copies your completed selection into your personal persistent clipboard.
```

## Paste Command

```text
PASTE COMMAND

/function worldedit:paste

Shows a preview at your feet. The clipboard's minimum corner is aligned to the preview corner.
```

## Confirm Command

```text
CONFIRM COMMAND

/function worldedit:confirm

Places the active paste preview. You can also click Confirm in the paste message.
```

## Undo Command

```text
UNDO COMMAND

/function worldedit:undo

Reverses your latest fill, replace, shape, line, or confirmed paste operation.
```

## Redo Command

```text
REDO COMMAND

/function worldedit:redo

Reapplies your latest undone operation. Starting a new edit clears the redo history.
```

## Tape Command

```text
TAPE COMMAND

/function worldedit:tape

Places persistent numbered measurement markers between Pos 1 and Pos 2.
```

```text
Break any displayed number to remove every marker belonging to that measurement.
```

## Line Command

```text
LINE COMMAND

/function worldedit:line {block:"minecraft:stone"}

Draws the selected block in a straight line from Pos 1 through Pos 2.
```

## Fill Command

```text
FILL COMMAND

/function worldedit:fill {block:"minecraft:stone"}

Fills the selection with the required block. Use "minecraft:air" to clear it.
```

## Replace Command

```text
REPLACE COMMAND

/function worldedit:replace {block:"minecraft:stone",replace:["minecraft:dirt"]}

Replaces the required matching block with the required new block.
```

## Walls Command

```text
WALLS COMMAND

/function worldedit:walls {block:"minecraft:stone"}

Builds the four vertical outer walls without adding a floor or roof.
```

## Hollow Command

```text
HOLLOW COMMAND

/function worldedit:hollow {block:"minecraft:glass"}

Builds a closed outer shell and clears the space inside it.
```

## Count Command

```text
COUNT COMMAND

/function worldedit:count {block:"minecraft:stone"}

Counts the required matching block in the selection without changing it.
```

## Stack Command

```text
STACK COMMAND

/function worldedit:stack {direction:"up",amount:5}

Copies the selection by the required amount and direction, then advances the selection.
```

## Move Command

```text
MOVE COMMAND

/function worldedit:move {direction:"left",amount:5}

Moves the selected blocks and selection by the required amount and direction.
```

## Shift Command

```text
SHIFT COMMAND

/function worldedit:shift {direction:"forward",amount:2}

Moves only the selection by the required amount and direction. Blocks stay where they are.
```
