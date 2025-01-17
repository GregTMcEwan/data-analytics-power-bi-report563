SELECT SUM(staff_numbers) AS gb_staff_numbers
FROM dim_stores
WHERE country_code = 'GB';
