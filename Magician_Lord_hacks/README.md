# Hacking Magician Lord

The idea: 
- Altering an original MVS cartridge of the game is a shame. On the other hand, Chinese repros are made for that !
- P1 is a 2 MBytes flash chip an P1 in Magician Lord is only 512 kBytes.
- A19 of the MX29F1615 is tied to GND with a bodged solder bridge on the PCB but can easily be tied to a bank selector.
- So it's just a matter of desoldering, rearranging the ROMs on the 2Mytes P1 chip and playing with A19 to get a dual boot cartridge.

## Step 1: removing some annoying chips with the good equipement

Let's be honest: this step is a real pain. In any case, the desoldering gun is not enough and you will need desoldering wick and / or hot air station for the final step.

![](/Magician_Lord_hacks/Hacking_Magician_Lord_01.jpg)

## Step 2: reprogramming the P ROM ans S ROM chip with the good equipement

A GQ4x4 programmer with adapter is 100% sure compatible with the MX29F1615. See codes for how the bank are organized. The ACFH hack requires also desoldering / programming the S ROM but the AES/MVS hack don't.

![](/Magician_Lord_hacks/Hacking_Magician_Lord_02.jpg)

## Step 3: a cheap accessible bank selector

You're cheap and you know how to use a screwdriver: let's do the cheapest possible bank switcher. Of course, it works. Now you can experience the pain of the Set 1 version of Magician Lord (the only real version) and the ACFH hack!

![](/Magician_Lord_hacks/AES_MVS_hack.png)

