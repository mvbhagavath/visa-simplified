import { GoogleGenerativeAI } from "@google/generative-ai";
import { getSchengen } from "./format";

const genAI = new GoogleGenerativeAI("AIzaSyDbKxg-gO1n8uJY_gCeIzEYXzykwbfcQ0I");

const getSchengenContent = async (userDetails: any) => {
  // The Gemini 1.5 models are versatile and work with both text-only and multimodal prompts
  const model = genAI.getGenerativeModel({ model: "gemini-1.5-pro" });

  const prompt = {
    contents: [
      {
        role: "",
        parts: [
          {
            text: `I am planning to go on a europe trip from ${userDetails.startDate} to ${userDetails.endDate}. My name is ${userDetails.name} from ${userDetails.nationality}. I work as a ${userDetails.designation} at ${userDetails.company} and reside at ${userDetails.address}. My phone number is ${userDetails.phone} and my email is ${userDetails.email}.  My purpose of travel is vacation. I am currently employed with ${userDetails.company} and have a no objection certificate from them for my travel. My passport Number is ${userDetails.passport}. I plan to arrive in ${userDetails.entry} on ${userDetails.startDate}. I plan to cover the following countries ${userDetails.countries} during this trip. I plan to return to my home country from ${userDetails.exit} on ${userDetails.endDate}.Generate a cover letter for my schengen visa application to the ${userDetails.entry} located at 123 St, Mumbai -600089.Generate an itinerary for this trip from ${userDetails.startDate} to ${userDetails.endDate}.`,
          },
        ],
      },
    ],
    systemInstruction: {
      role: "",
      parts: [
        {
          text: getSchengen(),
        },
      ],
    },
  };

  const result = await model.generateContent(prompt);
  const response = await result.response;
  const text = response.text();
  return text;
};

export {
  getSchengenContent
}