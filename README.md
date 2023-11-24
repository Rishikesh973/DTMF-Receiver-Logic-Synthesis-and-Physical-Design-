# DTMF Receiver: Logic Synthesis to Physical Design & generating GDSII file using GPDK 90nm process node

 Design of DTMF receiver from logic synthesis from rtl and perform Physical Design including floorplaning, partition, placement, CTS, Routing, STA and finally sign-off the design
 ---
 DTMF technology works by having the handset generate tones at specific frequencies and playing them over the phone line when a button is pressed on the keypad. Equipment at the other end of the phone line listens to the specific sounds and decodes them into commands.

These commands are typically used to dial a phone number to call but can also be used to signal phone control commands or control remote equipment, since the control tones are played on the same channel as the voice signal. It is an in-band signaling system; this is different than out-of-band systems.

DTMF specifies eight different tones. They are divided into a high group and a low group. Each key press corresponds to two tones -- hence the name dual tone -- one from the high group and one from the low group. This allows for 16 total keys.
