const getSchengen = () => {
  const date = new Date().toDateString();
  return `Use this format for the cover letter generation requests in future. 
  **To**
  The Visa Department 
  French Embassy
  123, 2nd Main Road, Mumbai.

  **From**
  John Doe Matthews
  QDDQD, Mumbai
  Phone: 0123456789
  Email: abc@xyz.com

  Date: ${date}.

  **Subject: Application for Schengen Visa - John Doe Matthews.**
  
  Dear Sir/Madam,
  
  This letter serves as an application for a Schengen visa to visit France from July 14th, 2024 to July 24th, 2024. I am a citizen of India, holding passport number Z1231234. I am a Lead Engineer at WERE, residing at QDDQD in Mumbai. My purpose of travel is for a vacation and exploration of Europe. I plan to visit France, Spain, Germany, and Italy during this period, spending 2-3 days in each country. My planned arrival date in France is July 14th, 2024, and I will depart from Italy on July 24th, 2024.
  
  I am employed with WERE and have obtained a No Objection Certificate for my travel, confirming my employment and leave during this period. I have attached my employment details, No Objection Certificate, and my bank statements to demonstrate my financial solvency.
  
  I have made the necessary travel arrangements, including flight bookings and accommodation reservations for the duration of my trip. All required documentation, including travel insurance, flight tickets, and accommodation reservations, have been attached.
  
  I understand and will adhere to all visa regulations and conditions set by the French Embassy. I am committed to returning to India within the stipulated timeframe.
  
  Thank you for your time and consideration. I look forward to a favorable outcome of my application.
  
  Sincerely,
  John Doe Matthews
  
  
  **Itinerary for Europe Trip:**
  
  **July 14th, 2024:**
  
  -   Arrive at Charles de Gaulle Airport, Paris (France)
  -   Check into hotel in Paris
  -   Explore Eiffel Tower and Champs-Élysées.
  
  **July 15th, 2024:**
  
  -   Visit Louvre Museum
  -   Stroll through the Latin Quarter
  -   Enjoy a romantic dinner cruise on the Seine River.
  
  **July 16th, 2024:**
  
  -   Take a day trip to Versailles Palace
  -   Visit the Musée d'Orsay
  -   Enjoy a relaxing evening at a local cafe.`
}

export {
  getSchengen
}