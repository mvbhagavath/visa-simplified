import { useEffect, useState } from "react";
import Markdown from "react-markdown";
import rehypeRaw from "rehype-raw";
import remarkGfm from "remark-gfm";
import generatePDF, { Margin, Options } from "react-to-pdf";
import { getSchengenContent } from "../utils/gemini";
import { useSelector } from "react-redux";
import { RootState } from "../store";

const CoverLetter = () => {
  const [coverLetter, setCoverLetter] = useState("");
  const userDetails: any = useSelector(
    (state: RootState) => state.userDetails.userDetails
  );
  useEffect(() => {
    generate();
  }, []);

  const generate = async () => {
    let content = await getSchengenContent(userDetails);
    setCoverLetter(content);
  };

  const getPDF = () => {
    const options: Options = {
      filename: userDetails.name ?? "Cover-letter",
      method: "open",
      page: {
        margin: Margin.SMALL,
      },
      overrides: {
        pdf: {
          compress: true,
        },
      },
    };

    generatePDF(getTargetElement, options);
  };

  const getTargetElement = () => document.getElementById("content-id");
  const getCoverLetter = () => {
    return (
      <div className="border shadow-md rounded-lg">
        <div id="content-id">
          <Markdown
            rehypePlugins={[rehypeRaw, remarkGfm]}
            className="rounded text-left p-[32px]"
          >{`${coverLetter.replace(/\n/g, "<br>")}`}</Markdown>
        </div>
      </div>
    );
  };
  return (
    <>
      {coverLetter.length ? (
        <div className="mx-auto max-w-[70%]">
          {getCoverLetter()}
          <button
            onClick={getPDF}
            className="rounded-lg p-[1rem] bg-[#0089D1] text-white my-[2rem] cursor-pointer"
          >
            Download PDF
          </button>
        </div>
      ) : (
        <div className="w-[100vw]">
          <img
            src="processing.gif"
            alt="loading"
            width={300}
            height={300}
            className=" mx-auto"
          />
        </div>
      )}
    </>
  );
};

export default CoverLetter;
