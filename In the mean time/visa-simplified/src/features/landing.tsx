import { Link } from "react-router-dom";

const Landing = () => {
  return (
    <div className="w-[100vw] flex items-center">
      <section className="w-[60%]">
        <img src="visasimplified.svg" alt="hero" className="w-[100%] " />
      </section>
      <section className="w-[40%] p-[2rem]">
        <h1 className="mb-[2rem] font-semibold">Visa Simplified</h1>
        <Link to="/user-details">
          <button className="rounded-lg p-[1rem] bg-[#0089D1] text-white mx-auto m-[2rem]">
            Cover Letter for Schengen Visa
          </button>
        </Link>
      </section>
    </div>
  );
};

export default Landing;
