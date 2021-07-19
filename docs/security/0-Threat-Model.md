# TerraCare Threat Model

## Contents

1. [Risk Assessment](#risk-assessment)
1. [Threat Analysis](#threat-analysis)

## Risk Assessment

<table>
    <thead>
        <tr>
            <th>User Devices</th>
            <th>Servers</th>
            <th>Network Devices</th>
            <th>Data</th>
            <th>Software</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Malware viruses being distributed to user devices</td>
            <td>SQL Injection attack on DB Tables</td>
            <td>Poor AAA implementation </td>
            <td>Sensitive Data Stolen</td>
            <td>Memory Leaks</td>
        </tr>
        <tr>
            <td>Ransomware</td>
            <td>Ddos Attack</td>
            <td>Server errors shutting system down</td>
            <td>Ransomware attacks holding data hostage</td>
            <td></td>
        </tr>
        <tr>
            <td>Memory Leaks</td>
            <td>Script Kiddies</td>
            <td>Personal user info being leaked</td>
            <td>Brute Force Attack</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>DOS Attack</td>
            <td>Insider Threat</td>
            <td>Social Engineering Attack</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Man in the middle attack</td>
            <td>Corrupted Drives/ Storage</td>
            <td>Data leaks</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Servers going down</td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## Threat Analysis

<table>
    <thead>
        <tr>
            <th>Type</th>
            <th style="color: red">A</th>
            <th style="color: yellow">B</th>
            <th style="color: orange">C</th>
            <th style="color: green">D</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Probability</td>
            <td>Certain</td>
            <td>Likely</td>
            <td>Unlikely</td>
            <td>Impossible</td>
        </tr>
        <tr>
            <td>Effect</td>
            <td>Destructive</td>
            <td>Disabling</td>
            <td>Disruptive</td>
            <td>Safe, no impact</td>
        </tr>
    </tbody>
    <thead>
        <tr>
            <th>Risk</th>
            <th>User Devices</th>
            <th>Servers</th>
            <th>Network Devices</th>
            <th>Data</th>
            <th>Software</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Ransomware attacks holding data hostage</td>
            <td>C/A</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>A/A</td>
            <td>C/C</td>
        </tr>
        <tr>
            <td>SQL Injection attack on DB Tables</td>
            <td>D/D</td>
            <td>A/A</td>
            <td>D/D</td>
            <td>D/D</td>
            <td>B/A</td>
        </tr>
        <tr>
            <td>Malware viruses</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>B/A</td>
        </tr>
        <tr>
            <td>Memory Leaks</td>
            <td>C/C</td>
            <td>B/A</td>
            <td>B/C</td>
            <td>B/C</td>
            <td>A/C</td>
        </tr>
        <tr>
            <td>Corrupted Drives/ Storage</td>
            <td>C/D</td>
            <td>C/A</td>
            <td>C/a</td>
            <td>C/D</td>
            <td>D/D</td>
        </tr>
        <tr>
            <td>DDOS/ DOS Attack</td>
            <td>C/C</td>
            <td>A/A</td>
            <td>B/C</td>
            <td>B/C</td>
            <td>D/D</td>
        </tr>
        <tr>
            <td>Server Errors</td>
            <td>D/C</td>
            <td>B/C</td>
            <td>D/C</td>
            <td>D/C</td>
            <td>A/A</td>
        </tr>
        <tr>
            <td>Insider Threat</td>
            <td>D/A</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>B/A</td>
        </tr>
        <tr>
            <td>Man in the middle attack</td>
            <td>B/A</td>
            <td>D/A</td>
            <td>B/A</td>
            <td>D/A</td>
            <td>D/D</td>
        </tr>
        <tr>
            <td>Data leaks</td>
            <td>C/A</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>B/A</td>
            <td>C/D</td>
        </tr>
        <tr>
            <td>Social Engineering Attack</td>
            <td>D/D</td>
            <td>C/A</td>
            <td>B/A</td>
            <td>D/A</td>
            <td>D/A</td>
        </tr>
        <tr>
            <td>Brute Force Attack</td>
            <td>C/A</td>
            <td>C/A</td>
            <td>B/A</td>
            <td>D/A</td>
            <td>D/A</td>
        </tr>
        <tr>
            <td>Script Kiddies</td>
            <td>C/A</td>
            <td>C/A</td>
            <td>C/A</td>
            <td>C/A</td>
            <td>C/A</td>
        </tr>
    </tbody>
</table>

## Risk Prevention Plan

> Work In Progress