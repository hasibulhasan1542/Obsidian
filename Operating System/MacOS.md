<center>1. Download Opencore Simplyfiy</center>
source
https://github.com/lzhoang2801/OpCore-Simplify

<center>2. Download USB Tool Box</center>
https://github.com/USBToolBox/tool

<center>3. Download USB Tool Box Kext</center>
https://github.com/USBToolBox/kext

<center>4. Download Hackintosh from </center>
Olaria

<center>5. Open Opencore-Simplyfiy (Windows Batch File) </center>
এইটা অন্য করার পর পিসির সব কনফিগারেশন এক্সপর্ট করার একটা অপশন আসবে। এক্সপর্ট করতে হবে এই ফোল্ডারেই। যদি এর বাইরে এক্সপোর্ট করা হয় তাহলে সেই ফোল্ডারের লিংক এখানে চাইবে। 
এরপর ২ নম্বর অপশনে গিয়ে কোন ভার্সনের ম্যাক ইন্সটল করতে চাই সেইটা দিতে হবে।
বাকী অপশনগুলা আর চেক করে কাজ নেই।
এরপর অপশন ৬ তে যেয়ে kext এবং আর যা লাগে তা জেনারেট করতে হবে। যে EFI ফাইলটা জেনারেট হবে সেইটা সংরক্ষণ করতে হবে। 

<center>6. Open USB Tool Box </center>
এইটা অন্য করার পর D দিয়ে পোর্ট ডিটেক্ট করতে হবে। এরপর S দিয়ে K দিতে হবে। 
এরপর USB Tool Box এর ১ম kext ফাইলটা কপি করে নতুন জেনারেট করা EFI এর OC > kext তে রাখতে হবে। 
একই কাজ করতে হবে USB Tool Box দিয়ে জেনারেট করা UTBMap.kext এর জন্য। 


<center>7. Download Opencore Auxiliary Tools </center>
https://github.com/ic005k/OCAuxiliaryTools

এইটা অন্য করে Open করতে হবে নতুন জেনারেট করা EFI এর config.plist ফাইলটা। 
এরপর kernel এ গিয়ে + চেপে যেই দুইটা ফাইল EFI > OC > kext তে পেস্ট করা হয়েছে তা এড করে সেভ দিতে হবে। 


এরপর পেন্ড্রাইভে ম্যাক বুট করে এর EFI ফাইলটা জেনারেট করা EFI ফাইল দিয়ে রিপ্লেস করতে হবে। 

এর জন্য লাগবে Mini Partition Tool। এইটা অন্য করে বুট করা পেনড্রাইভের EFI পার্টিশনের জন্য একটা লেটার এসাইন করতে হবে। 
এরপর Explorer Plus Plus দিয়ে EFI ড্রাইভে ঢুকে আগের EFI ফেলে নতুনটা রাখতে হবে। 

এরপর ইন্সটল করে 

নতুন OS এ নামাতে হবে Opencore configurator 
এইটা দিয়ে (Tools এ গিয়ে) > Generate EFI দিয়ে পেনড্রাইভ দেখাতে হবে। তাহলে ডেস্কটপে EFI ফাইল আসবে। এইটা যেকোনো একটা 100mb এর FAT32 ড্রাইভে রাখলেই হবে। 