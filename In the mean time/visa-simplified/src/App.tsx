import { useState } from "react";
import "./App.css";
import { GoogleGenerativeAI } from "@google/generative-ai";
import Markdown from "react-markdown";
import rehypeRaw from "rehype-raw";
import remarkGfm from "remark-gfm";
import generatePDF, { Margin, Options } from "react-to-pdf";
import Landing from "./features/landing";

const options: Options = {
  // default is `save`
  method: "open",
  page: {
    // margin is in MM, default is Margin.NONE = 0
    margin: Margin.SMALL,
    // default is 'A4'
  },

  // Customize any value passed to the jsPDF instance and html2canvas
  // function. You probably will not need this and things can break,
  // so use with caution.
  overrides: {
    // see https://artskydj.github.io/jsPDF/docs/jsPDF.html for more options
    pdf: {
      compress: true,
    },
  },
};
// Access your API key (see "Set up your API key" above)
const genAI = new GoogleGenerativeAI("AIzaSyDbKxg-gO1n8uJY_gCeIzEYXzykwbfcQ0I");

// function App() {
//   const [coverLetter, setCoverLetter] = useState("");
//   const generate = async () => {
//     // The Gemini 1.5 models are versatile and work with both text-only and multimodal prompts
//     const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

//     const prompt = {
//       contents: [
//         {
//           role: "",
//           parts: [
//             {
//               text: "I am planning to go on a europe trip from 14 July to 24 July 2024. My name is John Doe Matthews from India. I work as a Lead enginner at WERE and reside at QDDQD Mumbai. My phone number is 0123456789 and my email is abc@xyz.com.  My purpose of travel is vacation. I am currently employed with WERE and have a no objection certificate from them for my travel. My passport Number is Z1231234. I plan to land in France on 14 July. I plan to leave from Italy on 24 July 2024. I plan to cover France, Spain, Germany and Italy during this trip with 2-3 days in each country. Generate a cover letter for my schengen visa application to the french embassy located at 123, 2nd Main road, Mumbai. Also generate an itinerary for this trip.",
//             },
//           ],
//         },
//       ],
//       systemInstruction: {
//         role: "",
//         parts: [
//           {
//             text: `Use this format for the cover letter generation requests in future.
//             **To**
//             The Visa Department
//             French Embassy
//             123, 2nd Main Road, Mumbai.

//             **From**
//             John Doe Matthews
//             QDDQD, Mumbai
//             Phone: 0123456789
//             Email: abc@xyz.com

//             Date: 4th June 2024.

//             **Subject: Application for Schengen Visa - John Doe Matthews.**

//             Dear Sir/Madam,

//             This letter serves as an application for a Schengen visa to visit France from July 14th, 2024 to July 24th, 2024. I am a citizen of India, holding passport number Z1231234. I am a Lead Engineer at WERE, residing at QDDQD in Mumbai. My purpose of travel is for a vacation and exploration of Europe. I plan to visit France, Spain, Germany, and Italy during this period, spending 2-3 days in each country. My planned arrival date in France is July 14th, 2024, and I will depart from Italy on July 24th, 2024.

//             I am employed with WERE and have obtained a No Objection Certificate for my travel, confirming my employment and leave during this period. I have attached my employment details, No Objection Certificate, and my bank statements to demonstrate my financial solvency.

//             I have made the necessary travel arrangements, including flight bookings and accommodation reservations for the duration of my trip. All required documentation, including travel insurance, flight tickets, and accommodation reservations, have been attached.

//             I understand and will adhere to all visa regulations and conditions set by the French Embassy. I am committed to returning to India within the stipulated timeframe.

//             Thank you for your time and consideration. I look forward to a favorable outcome of my application.

//             Sincerely,
//             John Doe Matthews

//             **Itinerary for Europe Trip:**

//             **July 14th, 2024:**

//             -   Arrive at Charles de Gaulle Airport, Paris (France)
//             -   Check into hotel in Paris
//             -   Explore Eiffel Tower and Champs-Élysées.

//             **July 15th, 2024:**

//             -   Visit Louvre Museum
//             -   Stroll through the Latin Quarter
//             -   Enjoy a romantic dinner cruise on the Seine River.

//             **July 16th, 2024:**

//             -   Take a day trip to Versailles Palace
//             -   Visit the Musée d'Orsay
//             -   Enjoy a relaxing evening at a local cafe.

//             **July 17th, 2024:**

//             -   Depart from Paris to Spain (Madrid/Barcelona)
//             -   Explore the city of choice, visit landmarks and local attractions

//             **July 18th, 2024:**

//             -   Continue exploring the chosen city in Spain.

//             **July 19th, 2024:**

//             -   Depart from Spain to Germany (Berlin/Munich)
//             -   Explore the city of choice, visit landmarks and local attractions

//             **July 20th, 2024:**

//             -   Continue exploring the chosen city in Germany.

//             **July 21st, 2024:**

//             -   Depart from Germany to Italy (Rome/Florence)
//             -   Explore the city of choice, visit landmarks and local attractions

//             **July 22nd, 2024:**

//             -   Continue exploring the chosen city in Italy.

//             **July 23rd, 2024:**

//             -   Enjoy a final day in Italy, potentially exploring a different region or city if time permits.

//             **July 24th, 2024:**

//             -   Depart from Italy airport to India.`,
//           },
//         ],
//       },
//     };

//     const result = await model.generateContent(prompt);
//     const response = await result.response;
//     const text = response.text();
//     setCoverLetter(text);
//   };

//   const getTargetElement = () => document.getElementById("content-id");
//   const getCoverLetter = () => {
//     return (
//       <div id="content-id">
//         <Markdown
//           rehypePlugins={[rehypeRaw, remarkGfm]}
//           className="text-left p-[32px]"
//         >{`${coverLetter.replace(/\n/g, "<br>")}`}</Markdown>
//         <button onClick={() => generatePDF(getTargetElement, options)}>
//           Download PDF
//         </button>
//       </div>
//     );
//   };
//   return (
//     <>
//       <div className="border mx-auto max-w-[70%]">
//         {coverLetter.length ? getCoverLetter() : ""}
//       </div>
//       <button className="p-[16px] rounded-lg shadow-md" onClick={generate}>
//         Generate Cover letter
//       </button>
//     </>
//   );
// }

import { Routes, Route, Outlet, Link } from "react-router-dom";
import CoverLetter from "./features/cover-letter";
import UserDetails from "./features/userDetails/user-details";
import PageNotFound from "./features/404";

function Layout() {
  return (
    <div className="p-[4rem]">
      <Outlet />
    </div>
  );
}

function App() {
  return (
    <Routes>
      <Route path="/" element={<Layout />}>
        <Route index element={<Landing />} />
        <Route path="cover-letter" element={<CoverLetter />} />
        <Route path="user-details" element={<UserDetails />} />
        <Route path="*" element={<PageNotFound />} />
      </Route>
    </Routes>
  );
}

export default App;
