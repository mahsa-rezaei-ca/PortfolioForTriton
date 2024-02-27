-- Looking at the whole Data
SELECT *
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]

--The number of records in the dataset:
SELECT COUNT(*) AS total_records
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]

--The distinct values of the 'Gender' column:
SELECT DISTINCT Gender
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]

--The number of users in each age group:
SELECT Age, COUNT(*) AS user_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY Age;

--The distribution of Spotify subscription plans:
SELECT spotify_subscription_plan, COUNT(*) AS subscription_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY spotify_subscription_plan;

--Premium subscription willingness:
SELECT premium_sub_willingness, COUNT(*) AS willingness_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY premium_sub_willingness;

--The number of users preferring different music genres:
SELECT fav_music_genre, COUNT(*) AS genre_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY fav_music_genre
ORDER BY genre_count DESC;

--The preferred time slot for listening to music:
SELECT music_time_slot, COUNT(*) AS slot_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY music_time_slot
ORDER BY slot_count DESC;

--The number of users based on podcast listening frequency:
SELECT pod_lis_frequency, COUNT(*) AS frequency_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY pod_lis_frequency;

--The distribution of favorite podcast genres:
SELECT fav_pod_genre, COUNT(*) AS genre_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY fav_pod_genre
ORDER BY genre_count DESC;

--The preferred podcast format among users:
SELECT preffered_pod_format, COUNT(*) AS format_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY preffered_pod_format;

--The preference for podcast hosts (unknown vs. well-known):
SELECT pod_host_preference, COUNT(*) AS host_preference_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY pod_host_preference;

--The preferred podcast episode duration:
SELECT preffered_pod_duration, COUNT(*) AS duration_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY preffered_pod_duration;

--Satisfaction with podcast variety on Spotify:
SELECT pod_variety_satisfaction, COUNT(*) AS satisfaction_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY pod_variety_satisfaction;

--The correlation between podcast listening frequency and preferred podcast genre:
SELECT pod_lis_frequency, fav_pod_genre, COUNT(*) AS genre_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY pod_lis_frequency, fav_pod_genre
ORDER BY pod_lis_frequency, genre_count DESC;

--The most common podcast genres among users who prefer shorter podcast episodes:
SELECT preffered_pod_duration, fav_pod_genre, COUNT(*) AS genre_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
WHERE preffered_pod_duration = 'Shorter'
GROUP BY preffered_pod_duration, fav_pod_genre
ORDER BY genre_count DESC;

--The influence of podcast listening behaviors on preferred podcast formats:
SELECT pod_lis_frequency, preffered_pod_format, COUNT(*) AS format_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY pod_lis_frequency, preffered_pod_format
ORDER BY pod_lis_frequency, format_count DESC;

--The average rating of Spotify music recommendations for users who frequently listen to podcasts:
SELECT AVG(music_recc_rating) AS avg_recommendation_rating
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
WHERE pod_lis_frequency = 'Daily';

--The correlation between podcast satisfaction and willingness to take a Spotify premium subscription:
SELECT pod_variety_satisfaction, premium_sub_willingness, COUNT(*) AS count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY pod_variety_satisfaction, premium_sub_willingness;

--The most common Spotify listening device:
SELECT spotify_listening_device, COUNT(*) AS device_count
FROM [Portfolio Projects].[dbo].[SpotifyBehaviours]
GROUP BY spotify_listening_device
ORDER BY device_count DESC;


