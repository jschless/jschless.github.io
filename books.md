---
layout: book
---

# Book Log

I've been keeping a running log of books over the past few years or so. I'll link to my thoughts on them (if any). I've rated them each from 1 to 5.

Here's a visualization of this reading:

{% include plotly/reading_over_time.html %}


<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">

<style>
    #booksTable {
        width: 100% !important;
        margin-top: 20px;
    }
    #booksTable th {
        background-color: #667eea;
        color: white;
        font-weight: 600;
        padding: 12px;
    }
    #booksTable td {
        padding: 10px;
    }
    #booksTable tbody tr:hover {
        background-color: #f7fafc;
    }
    .dataTables_wrapper .dataTables_length,
    .dataTables_wrapper .dataTables_filter,
    .dataTables_wrapper .dataTables_info,
    .dataTables_wrapper .dataTables_paginate {
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .dataTables_wrapper .dataTables_filter input {
        border: 1px solid #cbd5e0;
        border-radius: 4px;
        padding: 5px 10px;
    }
</style>

<table id="booksTable" class="display" style="width:100%">
    <thead>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Score</th>
        </tr>
    </thead>
    <tbody>
        
        <tr>
            <td>The Crucible</td>
            <td>Arthur Miller</td>
            <td>October 05, 2025</td>
            <td>October 12, 2025</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Hero of the Empire</td>
            <td>Candice Millard</td>
            <td>September 13, 2025</td>
            <td>September 28, 2025</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Best and the Brightest</td>
            <td>David Halberstam</td>
            <td>July 19, 2025</td>
            <td>August 23, 2025</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>David Copperfield</td>
            <td>Charles Dickens</td>
            <td>June 05, 2025</td>
            <td>August 21, 2025</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Guns at Last Light</td>
            <td>Rick Atkinson</td>
            <td>May 07, 2025</td>
            <td>July 02, 2025</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Wright Brothers</td>
            <td>David McCullough</td>
            <td>June 21, 2025</td>
            <td>June 27, 2025</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Day of Battle</td>
            <td>Rick Atkinson</td>
            <td>April 07, 2025</td>
            <td>May 04, 2025</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Unit X: How the Pentagon and Silicon Valley are Transforming the Future of War</td>
            <td>Raj Shah</td>
            <td>April 14, 2025</td>
            <td>April 27, 2025</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>An Army at Dawn</td>
            <td>Rick Atkinson</td>
            <td>March 06, 2025</td>
            <td>April 05, 2025</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Odyssey</td>
            <td>Homer</td>
            <td>March 06, 2025</td>
            <td>April 03, 2025</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Seeing Like a State</td>
            <td>James Scott</td>
            <td>January 17, 2025</td>
            <td>March 01, 2025</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Decision in Normandy</td>
            <td>Carlo D'Este</td>
            <td>January 26, 2025</td>
            <td>February 23, 2025</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Bleak House</td>
            <td>Charles Dickens</td>
            <td>January 02, 2025</td>
            <td>January 21, 2025</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Project Hail Mary</td>
            <td>Andy Weir</td>
            <td>December 28, 2024</td>
            <td>December 30, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Life and Fate</td>
            <td>Vasily Grossman</td>
            <td>November 01, 2024</td>
            <td>December 19, 2024</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/cyropaedia-and-anabasis">The Anabasis of Cyrus</a></td>
            <td>Xenophon</td>
            <td>October 22, 2024</td>
            <td>December 12, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/cyropaedia-and-anabasis">The Education of Cyrus</a></td>
            <td>Xenophon</td>
            <td>September 09, 2024</td>
            <td>October 21, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Wool</td>
            <td>Hugh Howey</td>
            <td>September 24, 2024</td>
            <td>September 28, 2024</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Guns, Germs and Steel</td>
            <td>Jared Diamond</td>
            <td>September 09, 2024</td>
            <td>September 26, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/american-pastoral">American Pastoral</a></td>
            <td>Phillip Roth</td>
            <td>August 19, 2024</td>
            <td>August 28, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/red-river-to-appomattox">Red River to Appomattox</a></td>
            <td>Shelby Foote</td>
            <td>July 29, 2024</td>
            <td>August 17, 2024</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Late Admissions</td>
            <td>Glenn Loury</td>
            <td>June 20, 2024</td>
            <td>July 14, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/fredericksburg-to-meridian">Fredericksburg to Meridian</a></td>
            <td>Shelby Foote</td>
            <td>May 27, 2024</td>
            <td>June 29, 2024</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Achilles, Aeneas, Rustam and the Koran</td>
            <td>Bill Smyth</td>
            <td>May 22, 2024</td>
            <td>May 25, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/civil-war-volume-1">Fort Sumter to Perryville</a></td>
            <td>Shelby Foote</td>
            <td>April 21, 2024</td>
            <td>May 17, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Freedom’s Forge</td>
            <td>Arthur Herman</td>
            <td>April 30, 2024</td>
            <td>May 17, 2024</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/journey-to-the-end-of-the-night">Journey to the End of the Night</a></td>
            <td>Louis-Ferdinand Celine</td>
            <td>March 08, 2024</td>
            <td>May 15, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Tycoons</td>
            <td>Charles Morris</td>
            <td>April 04, 2024</td>
            <td>April 22, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>On the Soul</td>
            <td>Plato</td>
            <td>March 10, 2024</td>
            <td>April 19, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>His Very Best — Jimmy Carter, A Life</td>
            <td>Jonathan Alter</td>
            <td>February 29, 2024</td>
            <td>April 18, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>How to Win Friends and Influence People</td>
            <td>Dale Carnegie</td>
            <td>April 10, 2024</td>
            <td>April 17, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Path Between the Seas</td>
            <td>David McCullough</td>
            <td>March 19, 2024</td>
            <td>March 25, 2024</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Nineties</td>
            <td>Chuck Klosterman</td>
            <td>February 26, 2024</td>
            <td>March 15, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Vanderbilt: The Rise and Fall of an American Dynasty</td>
            <td>Anderson Cooper</td>
            <td>March 11, 2024</td>
            <td>March 15, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The House of Morgan</td>
            <td>Ron Chernow</td>
            <td>January 21, 2024</td>
            <td>February 23, 2024</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Flowers for Algernon</td>
            <td>Daniel Keyes</td>
            <td>February 04, 2024</td>
            <td>February 10, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Titan</td>
            <td>Ron Chernow</td>
            <td>December 29, 2023</td>
            <td>January 18, 2024</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Ender’s Game</td>
            <td>Orson Scott Card</td>
            <td>January 13, 2024</td>
            <td>January 15, 2024</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Destiny and Power: The American Odyssey of George Herbert Walker Bush</td>
            <td>John Meachem</td>
            <td>December 14, 2023</td>
            <td>December 28, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>G-Man: J. Edgar Hoover and the Making of the American Century</td>
            <td>Beverly Gage</td>
            <td>October 22, 2023</td>
            <td>December 18, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/The-Magic-Mountain">The Magic Mountain</a></td>
            <td>Thomas Mann</td>
            <td>September 04, 2023</td>
            <td>December 13, 2023</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Project Phoenix </td>
            <td>Gene Kim</td>
            <td>November 04, 2023</td>
            <td>November 06, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/Truman">Truman</a></td>
            <td>David McCullough</td>
            <td>September 22, 2023</td>
            <td>October 20, 2023</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Poppy War</td>
            <td>R.F. Kuang</td>
            <td>October 04, 2023</td>
            <td>October 06, 2023</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Dracula</td>
            <td>Bram Stoker</td>
            <td>August 27, 2023</td>
            <td>September 05, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>About Face</td>
            <td>David Hackworth</td>
            <td>August 10, 2023</td>
            <td>August 27, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Heart of Darkness</td>
            <td>Joseph Conrad</td>
            <td>August 01, 2023</td>
            <td>August 02, 2023</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>King Leopold’s Ghost</td>
            <td>Adam Hochschild</td>
            <td>July 27, 2023</td>
            <td>July 31, 2023</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Blood Meridian</td>
            <td>Cormac McCarthy</td>
            <td>June 25, 2023</td>
            <td>July 17, 2023</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Dark Matter</td>
            <td>Blake Crouch</td>
            <td>July 13, 2023</td>
            <td>July 15, 2023</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Glass Hotel</td>
            <td>Emily St. John Mandel</td>
            <td>July 10, 2023</td>
            <td>July 13, 2023</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Master and Margarita</td>
            <td>Mikhail Bulgakov</td>
            <td>May 03, 2023</td>
            <td>June 24, 2023</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Wild Problems</td>
            <td>Russ Roberts</td>
            <td>June 12, 2023</td>
            <td>June 17, 2023</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Man from the Future</td>
            <td>Ananyo Bhattarcharya</td>
            <td>March 02, 2023</td>
            <td>June 03, 2023</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Case Against the Sexual Revolution</td>
            <td>Louise Perry</td>
            <td>June 01, 2023</td>
            <td>June 02, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Doctor Zhivago</td>
            <td>Boris Pasternak</td>
            <td>April 10, 2023</td>
            <td>April 24, 2023</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Half the Way Home: A Memoir of Father and Son</td>
            <td>Adam Hochschild</td>
            <td>March 16, 2023</td>
            <td>March 16, 2023</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Daniel Deronda</td>
            <td>George Eliot</td>
            <td>January 10, 2023</td>
            <td>March 05, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Disappearance of Josef Mengele</td>
            <td>Olivier Guez</td>
            <td>February 15, 2023</td>
            <td>February 15, 2023</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Moby Dick</td>
            <td>Herman Mellville</td>
            <td>August 26, 2022</td>
            <td>December 11, 2022</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Stolen Focus</td>
            <td>Johann Hari</td>
            <td>July 29, 2022</td>
            <td>August 15, 2022</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Greenlights</td>
            <td>Matthew McConaughey</td>
            <td>July 10, 2022</td>
            <td>July 13, 2022</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Books of Jacob</td>
            <td>Olga Tokarczuk</td>
            <td>April 26, 2022</td>
            <td>May 18, 2022</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Democracy in America</td>
            <td>Alexis de Tocqueville</td>
            <td>February 02, 2022</td>
            <td>April 19, 2022</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Robinson Crusoe</td>
            <td>Daniel Defoe</td>
            <td>March 31, 2022</td>
            <td>April 07, 2022</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Boys in the Boat</td>
            <td>Daniel James Brown</td>
            <td>March 23, 2022</td>
            <td>March 30, 2022</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Sense and Sensibility</td>
            <td>Jane Austen</td>
            <td>January 26, 2022</td>
            <td>February 26, 2022</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Money Magic</td>
            <td>Laurence Kotlikoff</td>
            <td>February 02, 2022</td>
            <td>February 03, 2022</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Catcher in the Rye</td>
            <td>J.D. Salinger</td>
            <td>January 15, 2022</td>
            <td>January 19, 2022</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Sweet Spot</td>
            <td>Paul Bloom</td>
            <td>January 07, 2022</td>
            <td>January 17, 2022</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Being Mortal</td>
            <td>Atul Gawande</td>
            <td>January 03, 2022</td>
            <td>January 10, 2022</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Splendid and the Vile</td>
            <td>Erik Larson</td>
            <td>December 04, 2021</td>
            <td>December 25, 2021</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Paul Simon</td>
            <td>Robert Hilburn</td>
            <td>December 18, 2021</td>
            <td>December 22, 2021</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Where is my Flying Car?</td>
            <td>J. Storrs Hall</td>
            <td>December 13, 2021</td>
            <td>December 17, 2021</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>American Judaism</td>
            <td>Jonathan Sarna</td>
            <td>October 07, 2021</td>
            <td>November 28, 2021</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Dune</td>
            <td>Frank Herbert</td>
            <td>November 05, 2021</td>
            <td>November 11, 2021</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Gulliver's Travels</td>
            <td>Jonathan Swift</td>
            <td>September 01, 2021</td>
            <td>September 13, 2021</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Churchill: Walking With Destiny</td>
            <td>Andrew Roberts</td>
            <td>June 27, 2021</td>
            <td>August 01, 2021</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Mere Christianity</td>
            <td>C.S. Lewis</td>
            <td>June 21, 2021</td>
            <td>June 24, 2021</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Guns, Germs, and Steel</td>
            <td>Jared Diamond</td>
            <td>March 24, 2021</td>
            <td>April 03, 2021</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Complacent Class</td>
            <td>Tyler Cowen</td>
            <td>March 14, 2021</td>
            <td>March 17, 2021</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Once an Eagle</td>
            <td>Anton Myer</td>
            <td>February 24, 2021</td>
            <td>March 13, 2021</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>A History of the Jews</td>
            <td>Paul Johnson</td>
            <td>January 18, 2021</td>
            <td>February 24, 2021</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>A Gentleman in Moscow</td>
            <td>Amor Towles</td>
            <td>January 22, 2021</td>
            <td>January 26, 2021</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Fountainhead</td>
            <td>Ayn Rand</td>
            <td>January 08, 2021</td>
            <td>January 16, 2021</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Portnoy's Complaint</td>
            <td>Phillip Roth</td>
            <td>November 21, 2020</td>
            <td>November 30, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Get Together</td>
            <td>Bailey Richardson</td>
            <td>November 22, 2020</td>
            <td>November 23, 2020</td>
            <td>⭐️</td>
        </tr>
        <tr>
            <td>Jump-Starting America</td>
            <td>Jonathan Gruber</td>
            <td>November 08, 2020</td>
            <td>November 14, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Bullshit Jobs: A Theory</td>
            <td>David Graeber</td>
            <td>October 08, 2020</td>
            <td>November 10, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Dreamland</td>
            <td>Sam Quinones</td>
            <td>October 30, 2020</td>
            <td>November 07, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Stubborn Attachments</td>
            <td>Tyler Cowen</td>
            <td>October 27, 2020</td>
            <td>October 30, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Three Languages of Politics</td>
            <td>Arnold Kling</td>
            <td>October 19, 2020</td>
            <td>October 22, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Cult of Smart</td>
            <td>Fredrik deBoer</td>
            <td>September 22, 2020</td>
            <td>October 09, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Very Important People</td>
            <td>Ashley Mears</td>
            <td>September 18, 2020</td>
            <td>October 01, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Americanah</td>
            <td>Chimamanda Ngozi Adichie</td>
            <td>August 29, 2020</td>
            <td>September 07, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>I and Thou</td>
            <td>Martin Buber</td>
            <td>August 09, 2020</td>
            <td>August 26, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Winning the Next War</td>
            <td>Stephen Rosen</td>
            <td>August 09, 2020</td>
            <td>August 25, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Devil in the White City</td>
            <td>Erik Larson</td>
            <td>August 14, 2020</td>
            <td>August 17, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Working in Public: The Making and Maintenance of Open Source Software</td>
            <td>Nadia Eghbal</td>
            <td>August 09, 2020</td>
            <td>August 12, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Treasure Island</td>
            <td>Robert Louis Stevenson</td>
            <td>August 03, 2020</td>
            <td>August 06, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Revolt of the Public</td>
            <td>Martin Gurri</td>
            <td>July 29, 2020</td>
            <td>August 02, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Second Machine Age</td>
            <td>Erik Brynjolfsson</td>
            <td>July 22, 2020</td>
            <td>August 01, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Martin Buber's I and Thou: Practicing Living Dialogue</td>
            <td>Kenneth Kramer</td>
            <td>July 20, 2020</td>
            <td>July 29, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Pornography and Silence</td>
            <td>Susan Griffin</td>
            <td>July 13, 2020</td>
            <td>July 17, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Decadent Society</td>
            <td>Ross Douthat</td>
            <td>July 10, 2020</td>
            <td>July 14, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>How Innovation Works</td>
            <td>Matt Ridley</td>
            <td>June 22, 2020</td>
            <td>July 08, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Bad Religion</td>
            <td>Ross Douthat</td>
            <td>June 02, 2020</td>
            <td>July 07, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Innovator's Dilemma</td>
            <td>Clayton Christensen</td>
            <td>June 13, 2020</td>
            <td>June 21, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Art of Doing Science and Engineering</td>
            <td>Richard Hamming</td>
            <td>June 02, 2020</td>
            <td>June 08, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Range</td>
            <td>David Epstein</td>
            <td>May 26, 2020</td>
            <td>May 31, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Power Broker</td>
            <td>Robert Caro</td>
            <td>May 18, 2020</td>
            <td>May 31, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Last Man Who Knew Everything</td>
            <td>David Schwartz</td>
            <td>May 04, 2020</td>
            <td>May 22, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Beloved</td>
            <td>Toni Morrison</td>
            <td>May 13, 2020</td>
            <td>May 16, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Idiot</td>
            <td>Fyodor Dostoevsky</td>
            <td>May 06, 2020</td>
            <td>May 12, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>History of the Pelopponesian War</td>
            <td>Thucidydes</td>
            <td>April 27, 2020</td>
            <td>May 05, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Adventures of Don Quixote</td>
            <td>Miguel de Cervantes</td>
            <td>April 20, 2020</td>
            <td>April 26, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Tortilla Flat</td>
            <td>John Steinbeck</td>
            <td>April 18, 2020</td>
            <td>April 19, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Losing Ground</td>
            <td>Charles Murray</td>
            <td>April 16, 2020</td>
            <td>April 17, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Count of Monte Cristo</td>
            <td>Alexandre Dumas</td>
            <td>April 09, 2020</td>
            <td>April 14, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Love in the Time of Cholera</td>
            <td>Gabriel Garcia Marquez</td>
            <td>April 04, 2020</td>
            <td>April 07, 2020</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Candide</td>
            <td>Voltaire</td>
            <td>April 02, 2020</td>
            <td>April 02, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Innovators</td>
            <td>Walter Isaacson</td>
            <td>March 29, 2020</td>
            <td>March 31, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Fathers and Sons</td>
            <td>Ivan Turganev</td>
            <td>March 23, 2020</td>
            <td>March 24, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>World Without Mind</td>
            <td>Franklin Foer</td>
            <td>March 21, 2020</td>
            <td>March 22, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Plague</td>
            <td>Albert Camus</td>
            <td>March 18, 2020</td>
            <td>March 20, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>#Republic</td>
            <td>Cass Sunstein</td>
            <td>March 15, 2020</td>
            <td>March 17, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Uncle Tom's Cabin</td>
            <td>Harriet Beecher Stowe</td>
            <td>January 23, 2020</td>
            <td>March 14, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Bobos in Paradise</td>
            <td>David Brooks</td>
            <td>February 24, 2020</td>
            <td>March 12, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Tribe</td>
            <td>Sebastian Junger</td>
            <td>February 22, 2020</td>
            <td>February 24, 2020</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>How to Hide an Empire</td>
            <td>Daniel Immewahr</td>
            <td>January 10, 2020</td>
            <td>January 22, 2020</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Pachinko</td>
            <td>Min Jin Lee</td>
            <td>December 26, 2019</td>
            <td>January 03, 2020</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Plot Against America</td>
            <td>Phillip Roth</td>
            <td>December 19, 2019</td>
            <td>December 26, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Right Stuff</td>
            <td>Tom Wolfe</td>
            <td>November 11, 2019</td>
            <td>December 19, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Dead Souls</td>
            <td>Nikolay Gogol</td>
            <td>October 18, 2019</td>
            <td>October 25, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Assault on American Excellence</td>
            <td>Anthony Kronman</td>
            <td>October 15, 2019</td>
            <td>October 18, 2019</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Stillness is the Key</td>
            <td>Ryan Holiday</td>
            <td>October 11, 2019</td>
            <td>October 14, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Super Pumped</td>
            <td>Mike Isaac</td>
            <td>October 06, 2019</td>
            <td>October 10, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Meritocracy Trap</td>
            <td>Daniel Markovits</td>
            <td>September 23, 2019</td>
            <td>October 05, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Dignity</td>
            <td>Chris Arnade</td>
            <td>September 10, 2019</td>
            <td>September 10, 2019</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>A Man Called Ove</td>
            <td>Fredrik Backman</td>
            <td>September 05, 2019</td>
            <td>September 08, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/the-rational-optimist">The Rational Optimist</a></td>
            <td>Matt Ridley</td>
            <td>August 30, 2019</td>
            <td>September 03, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>One Hundred Years of Solitude</td>
            <td>Gabriel Garcia Marquez</td>
            <td>August 22, 2019</td>
            <td>August 30, 2019</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Meditations</td>
            <td>Marcus Aurelius</td>
            <td>August 18, 2019</td>
            <td>August 21, 2019</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Catch-22</td>
            <td>Joseph Heller</td>
            <td>August 11, 2019</td>
            <td>August 17, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Average is Over</td>
            <td>Tyler Cowen</td>
            <td>August 05, 2019</td>
            <td>August 09, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Lolita</td>
            <td>Vladimir Nabokov</td>
            <td>July 29, 2019</td>
            <td>August 01, 2019</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The 48 Laws of Power</td>
            <td>Robert Greene</td>
            <td>July 20, 2019</td>
            <td>July 28, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td><a href="/posts/journey-to-the-end-of-the-night">Journey to the End of the Night</a></td>
            <td>Louis-Ferdinand Celine</td>
            <td>June 01, 2019</td>
            <td>June 28, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Castle</td>
            <td>Franz Kafka</td>
            <td>May 01, 2019</td>
            <td>May 08, 2019</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Sun Also Rises</td>
            <td>Ernest Hemingway</td>
            <td>April 29, 2019</td>
            <td>May 03, 2019</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Battle Hymn of the Tiger Mother</td>
            <td>Amy Chua</td>
            <td>April 25, 2019</td>
            <td>April 29, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Road to Serfdom</td>
            <td>F.A. Hayek</td>
            <td>March 28, 2019</td>
            <td>April 25, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Homage to Catalonia</td>
            <td>George Orwell</td>
            <td>April 10, 2019</td>
            <td>April 23, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Black Hearts</td>
            <td>Jim Frederick</td>
            <td>March 25, 2019</td>
            <td>April 10, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Endurance</td>
            <td>Alfred Lansing</td>
            <td>April 09, 2019</td>
            <td>April 10, 2019</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Diversity Delusion</td>
            <td>Amy McDonald</td>
            <td>March 25, 2019</td>
            <td>April 01, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>One Day in the Life of Ivan Denisovich</td>
            <td>Alexander Solzhenitsyn</td>
            <td>March 21, 2019</td>
            <td>March 28, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Like War</td>
            <td>Emerson T. Brooking</td>
            <td>March 03, 2019</td>
            <td>March 21, 2019</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>In The First Circle</td>
            <td>Alexander Solzhenitsyn</td>
            <td>February 11, 2019</td>
            <td>March 02, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Platoon Leader</td>
            <td>James McDonough</td>
            <td>February 12, 2019</td>
            <td>February 21, 2019</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Industries of the Future</td>
            <td>Alec Ross</td>
            <td>January 20, 2019</td>
            <td>February 04, 2019</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Return of Tarzan</td>
            <td>Edgar Rice Borroughs</td>
            <td>January 14, 2019</td>
            <td>January 16, 2019</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Tarzan of the Apes</td>
            <td>Edgar Rice Borroughs</td>
            <td>January 12, 2019</td>
            <td>January 14, 2019</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Anna Karenina</td>
            <td>Leo Tolstoy</td>
            <td>December 23, 2018</td>
            <td>January 11, 2019</td>
            <td>⭐️⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Adventures of Augie March</td>
            <td>Saul Bellow</td>
            <td>October 15, 2018</td>
            <td>November 06, 2018</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Excellent Sheep</td>
            <td>William Deresiewicz</td>
            <td>October 08, 2018</td>
            <td>October 12, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Young Washington</td>
            <td>Peter Stark</td>
            <td>July 23, 2018</td>
            <td>July 31, 2018</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Road to Wigan Pier</td>
            <td>George Orwell</td>
            <td>July 22, 2018</td>
            <td>July 23, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Dataclysm</td>
            <td>Christian Rudder</td>
            <td>July 18, 2018</td>
            <td>July 22, 2018</td>
            <td>⭐️⭐️</td>
        </tr>
        <tr>
            <td>Ordinary Men</td>
            <td>Christopher Browning</td>
            <td>July 15, 2018</td>
            <td>July 18, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Fahrenheight 451</td>
            <td>Ray Bradbury</td>
            <td>July 14, 2018</td>
            <td>July 15, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Weapons of Math Destruction</td>
            <td>Cathy O'Neill</td>
            <td>July 11, 2018</td>
            <td>July 13, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>For Whom the Bell Tolls</td>
            <td>Ernest Hemingway</td>
            <td>July 04, 2018</td>
            <td>July 11, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>Country Dark</td>
            <td>Chris Offutt</td>
            <td>June 20, 2018</td>
            <td>July 04, 2018</td>
            <td>⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>To Save Everything, Click Here</td>
            <td>Evgeny Morozov</td>
            <td>June 30, 2018</td>
            <td>July 03, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
        <tr>
            <td>The Goldfinch</td>
            <td>Donna Tartt</td>
            <td>June 19, 2018</td>
            <td>June 30, 2018</td>
            <td>⭐️⭐️⭐️⭐️</td>
        </tr>
    </tbody>
</table>

<!-- jQuery and DataTables JS -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>

<script>
$(document).ready(function() {
    $('#booksTable').DataTable({
        "order": [[3, "desc"]],  // Sort by End Date descending
        "pageLength": 25,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        "language": {
            "search": "Search books:",
            "lengthMenu": "Show _MENU_ books per page",
            "info": "Showing _START_ to _END_ of _TOTAL_ books",
            "infoEmpty": "No books found",
            "infoFiltered": "(filtered from _MAX_ total books)"
        }
    });
});
</script>


Past book list (prior to JUN2018 but starting in 2016), before I started freakishly recording things:

- The Sympathizer - Viet Thanh Nguyen
- Hillbilly Elegy - J.D. Vance
- Freedom - Jonathon Franzenc
- Purity - Jonathon Franzen
- The Circle - Dave Eggers
- Hashish: A Smuggler's Tale - Henry de Monfreid
- The Zookeeper's Wife - Diane Ackerman
- The Rational Optimist - Matt Ridley
- Alexander Hamilton - Ron Chernow
- A Grief Observed - C.S. Lewis
- The Rape of Nanking - Iris Chang
- Brave New World - Aldous Huxley
- The Sound and the Fury - William Faulkner (Partial, how could anyone finish this book?)
- One Bullet Away - Nathaniel Fick
- Undaunted Courage - Stephen Ambrose
- Gates of Fire- Steven Pressfield
- Explaining Postmodernism - Stephen Hicks
- The Metamorphosis - Franz Kafka
- Churchill and Orwell - Thomas Ricks
- Crime and Punishment - Fyodor Dostoevsky
- The Trial - Franz Kafka
- 1984 - George Orwell
- Animal Farm - George Orwell
- The Spy Who Came in from the Cold - John le Carre
- I Am Charlotte Simmons - Tom Wolfe
- The Stranger - Albert Camus
- Madame Bovary - Gustave Flaubert
- The Vanishing American Adult - Ben Sasse
- The Adventures of Huckleberry Finn - Mark Twain
- A Farewell to Arms - Ernest Hemingway
- Emile - Jean-Jacques Rousseau
- The Brothers Karamazov - Fyodor Dostoevsky
- Slaughterhouse 5 - Kurt Vonagut
- Between the World and Me - Ta-Nahesi Coates
- 12 Rules for Life - Jordan Peterson
- Everybody Lies - Seth Stephens-Davidowitz
- The Shallows - Nicholas Carr
- Irresistible - Adam Alter
- The 10 Laws of Trust - Joel Peterson
- Conspiracy - Ryan Holiday
