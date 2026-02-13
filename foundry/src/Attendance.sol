// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attendance {
    struct Student {
        string name;
        uint256 age;
        bool present;
    }

    Student[] public students;

    event StudentAdded(uint256 studentId, string name, uint256 age);
    event AttendanceUpdated(uint256 studentId, bool present);

    function addStudent(string memory _name, uint256 _age) external {
        students.push(Student({name: _name, age: _age, present: false}));
        uint256 id = students.length - 1;
        emit StudentAdded(id, _name, _age);
    }

    function updateAttendance(uint256 _studentId, bool _present) external {
        require(_studentId < students.length, "Invalid student ID");
        students[_studentId].present = _present;
        emit AttendanceUpdated(_studentId, _present);
    }

    function getStudentCount() external view returns (uint256) {
        return students.length;
    }

    function getStudent(uint256 _studentId)
        external
        view
        returns (string memory name, uint256 age, bool present)
    {
        require(_studentId < students.length, "Invalid student ID");
        Student memory s = students[_studentId];
        return (s.name, s.age, s.present);
    }
}
