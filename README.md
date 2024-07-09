# We Split

### About The App
- basic app that takes bill amount, no of people, tips and gives you your share and makes it easy for all to know how much is their share
### New Things learnt
- UI Kit
    - @State  --> it basically used when you want to Remember the state after changing value 
        - @State private --> to make it so that it is only accessed in that particular view (i may be wrong here but im trying to explain here)
        - $checkAmount --> to make change to value so that state Remember it 
    - @FocusState --> to make it so that keyboard can be focused if something is active making the state to be true else have a button - that make state to be false thus keyboard can be unfocused
### Things To Remember 
- @state
- @FocusState

- TextField("Bill Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
    - here because we want the bill to have a currency symbol and am using value instead of text as $checkAmount is actually a value 
    - having format to habe all these as to use the local currency so that we can have symbol

 ## Screenshots
  - <img width="400" alt="Screenshot 2024-07-09 at 10 33 41 PM" src="https://github.com/Anastandstealb/WeSplit/assets/105513274/f1372822-396c-4b46-ada0-db0c1c9a1880">
  - <img width="400" alt="Screenshot 2024-07-09 at 10 33 56 PM" src="https://github.com/Anastandstealb/WeSplit/assets/105513274/46971c77-3af5-446a-bb07-d6b0b4e65535">
