import { FormEvent, useState } from "react";
import { useDispatch } from "react-redux";
import { useNavigate } from "react-router-dom";
import { saveDetails } from "./userDetailsSlice";

const UserDetails = () => {
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [formData, setFormData] = useState({});
  const handleSubmit = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    dispatch(saveDetails(formData));
    navigate("/cover-letter");
  };
  const onChange = (key: string, value: string) => {
    setFormData({
      ...formData,
      [key]: value,
    });
  };
  return (
    <div className="w-[90vw]">
      <div className="mb-[32px]">
        <h1 className="font-semibold mb-[8px]">Travel details</h1>
        <p className="text-base">
          Please provide us with your travel details to get trip specific cover
          letter.
        </p>
      </div>
      <form onSubmit={handleSubmit} className="grid grid-cols-12">
        <div className="col-span-4 my-[16px]">
          <label htmlFor="name" className="block mb-[5px] font-semibold">
            Name
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("name", e.target.value);
            }}
            id="name"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="address" className="block mb-[5px] font-semibold">
            Address
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("address", e.target.value);
            }}
            id="address"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="passport" className="block mb-[5px] font-semibold">
            Passport No.
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("passport", e.target.value);
            }}
            id="passport"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="nationality" className="block mb-[5px] font-semibold">
            Nationality
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("nationality", e.target.value);
            }}
            id="nationality"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="company" className="block mb-[5px] font-semibold">
            Company
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("company", e.target.value);
            }}
            id="company"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="designation" className="block mb-[5px] font-semibold">
            Designation
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("designation", e.target.value);
            }}
            id="designation"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="phone" className="block mb-[5px] font-semibold">
            Phone
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("phone", e.target.value);
            }}
            id="phone"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="email" className="block mb-[5px] font-semibold">
            E-mail
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("email", e.target.value);
            }}
            id="email"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="entry" className="block mb-[5px] font-semibold">
            Entry Port
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("entry", e.target.value);
            }}
            id="entry"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="exit" className="block mb-[5px] font-semibold">
            Exit Port
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("exit", e.target.value);
            }}
            id="exit"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="countries" className="block mb-[5px] font-semibold">
            Countries covered
          </label>
          <input
            type="text"
            onChange={(e) => {
              onChange("countries", e.target.value);
            }}
            id="countries"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="startDate" className="block mb-[5px] font-semibold">
            Start Date
          </label>
          <input
            type="date"
            onChange={(e) => {
              onChange("startDate", e.target.value);
            }}
            id="startDate"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4 my-[16px]">
          <label htmlFor="endDate" className="block mb-[5px] font-semibold">
            End Date
          </label>
          <input
            type="date"
            onChange={(e) => {
              onChange("endDate", e.target.value);
            }}
            id="endDate"
            className="border p-[8px] rounded-md w-[80%]"
          />
        </div>
        <div className="col-span-4">
          <button
            type="submit"
            className="rounded-lg px-[3rem] bg-[#0089D1] text-white my-[32px] cursor-pointer"
          >
            Submit
          </button>
        </div>
      </form>
    </div>
  );
};

export default UserDetails;
