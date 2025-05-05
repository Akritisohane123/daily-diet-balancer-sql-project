-- Show daily total calories for a user
SELECT u.name, m.date, 
       SUM((f.calories_per_100g * mi.quantity_g) / 100) AS total_calories
FROM Users u
JOIN Meals m ON u.user_id = m.user_id
JOIN Meal_Items mi ON m.meal_id = mi.meal_id
JOIN Foods f ON mi.food_id = f.food_id
GROUP BY u.name, m.date;
