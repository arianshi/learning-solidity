// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract MedicalHistory {
      struct Patient {
        string name;
        uint age;
        string[] conditions;
        string[] allergies;
        string[] medications;
        string[] procedures;
        string[] medicationHistory;

      }

      mapping (address => Patient) public patients;

      function addPatient(
        string memory _name,
        uint _age,
        string[] memory _conditions,
        string[] memory _allergies,
        string[] memory _medications,
        string[] memory _procedures,
        string[] memory _medicationHistory
      ) public  {
         Patient memory patient = Patient(_name, _age, _conditions, _allergies, _medications, _procedures, _medicationHistory);
         patients[msg.sender] = patient;
       }

      function updatePatient (
        string[] memory _conditions,
        string[] memory _allergies,
        string[] memory _medications,
        string[] memory _procedures,
        string[] memory _medicationHistory
      ) public view {
         Patient memory patient = patients[msg.sender];
         patient.conditions = _conditions;
         patient.allergies = _allergies;
         patient.medications = _medications;
         patient.procedures = _procedures;
         patient.medicationHistory = _medicationHistory;
      } 

      function getPatient(address _patientAddress) public view returns (
        string memory,
        uint,
        string[] memory,
        string[] memory,
        string[] memory,
        string[] memory,
        string[] memory
      ) {
         Patient memory patient = patients[_patientAddress];

         return (
          patient.name, 
          patient.age, 
          patient.conditions,
          patient.allergies,
          patient.medications,
          patient.procedures,
          patient.medicationHistory);
      }
}