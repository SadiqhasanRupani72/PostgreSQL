select * from cd.bookings;

select * from cd.members
where firstname = 'David' and surname = 'Farrell';

select cd.bookings.starttime,
cd.members.firstname, cd.members.surname from cd.bookings
inner join cd.members 
on cd.bookings.memid = cd.members.memid
where cd.members.firstname = 'David' and cd.members.surname = 'Farrell';