# Name-yourself-in-Chinese
Swift iOS program.

Partners: Junyang Chen, Yukun Chen, Zixiang Liu, Yifei Yang

Proposal:
Introduction
With Chinese culture affecting this whole world increasingly, having a nice and sounding Chinese name will become a very meaningful thing. A good Chinese name can promote better communication with the Chinese people, and let the others feel your understanding of the Chinese culture. Not only that, as the Chinese proverb, good names can make people shine, a beautiful Chinese name can bring good luck and lofty future.

Target Audience
Generally the app is designed for those who like Chinese culture and wish to have a Chinese name. While businessmen who want to have Chinese Business card will find this app is the only option on the market.

Existing Apps
Since similar apps in Appstore cannot generate business card, and cannot show correct way of writing the name, let only writing practice, our app is tailored for business oriented customers.

How to use
By input an English last name, the application would automatically generate a corresponding Chinese last name. And then depend on users’ gender and specific requirements like (sound-like, concept behind name or easy-writing), the application would show a list of results to users.

Main function：Generate Chinese name
Views：
1. loading
2. Input page (ask for gender, last name, first name, writability and so on)
3. Output text (A list of generated names and their meanings)
4. Additional input page to gather information to generate business card
5. Generate both Chinese and English version business card
6. Show how to write the Chinese words

UI:
Loading view: just include a static string
Input view: Combination of segment controller, label, text field
Output view: Table view
Business card: Be able to save as images
Word animation: GIF to show how to write each word

Database:
A local database includes:
Commonly used Chinese characters:
easiness of writing, meaning
An online database includes:
Animation of each word in GIF format

User experience:
1. Open the app
2. Input information
3. See a list of candidates
4. edit candidates
5. Select preferred one
6. Fill in detailed information
7. Generate businesscard, which can save to picture
8. See how to write each word
9. Use slider to choose the speed gif runs
10. Go back to choose another combination
