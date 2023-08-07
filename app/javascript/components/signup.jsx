import { Layout } from "antd";
import React, { useState, useEffect } from "react";
import { useParams } from 'react-router-dom';


const Signup  = () => {
    const {type} = useParams();
    const [passwordValue, setPasswordValue] = useState('');
    const [formData, setFormData] = useState({
        coach: {
            email: '',
            password: '',
        }
      });

    const AgentType = {
        coach: "coaches",
        student: "students"
    }

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData((prevData) => ({
          ...prevData,
        coach: {
            ...prevData.coach,
            [name]: value,
        }  
        }));
    }

    const handleSubmit = (e) => {
        e.preventDefault();
        const meta = document.querySelector('meta[name=csrf-token]');
        const csrfToken = meta && meta.getAttribute('content');
          
        
        fetch(`/api/v1/${type}`, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'X-CSRF-Token': csrfToken,
            },
            body: JSON.stringify(formData),
          })
            .then((response) => response.json())
            .then((data) => {
              console.log('Success:', data);
            })
            .catch((error) => {
              console.error('Error:', error);
            });

        console.log('Form submitted:', formData);
      }; 

    
    return (
        <div>
        <h2>Sign Up</h2>
        <form onSubmit={handleSubmit}>
          <label>
            Email:
            <input
              type="text"
              name="email"
              value={formData.email}
              onChange={handleChange}
            />
          </label>
          <br />
          <label>
            Password:
            <input
              type="password"
              name="password"
              value={formData.password}
              onChange={handleChange}
            />
          </label>
          <br />
            <input
              type="hidden"
              name="password_confirmation"
              value={formData.password}
              onChange={handleChange}
            />
          <button type="submit">Sign Up </button>
        </form>
      </div>   
    )    
}

export default Signup;