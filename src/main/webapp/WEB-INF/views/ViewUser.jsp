<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View User</title>
    <!-- Add Tailwind CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.1/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">

    <div class="container mx-auto mt-10">
        <div class="bg-white shadow-lg rounded-lg overflow-hidden">
            <div class="bg-blue-500 text-white text-center py-3">
                <h1 class="text-2xl">View User</h1>
            </div>
            <div class="p-6">
                <p class="text-gray-700 text-lg"><strong>User FirstName:</strong> ${user.firstName }</p>
                <p class="text-gray-700 text-lg"><strong>User LastName:</strong> ${user.lastName }</p>
                <p class="text-gray-700 text-lg"><strong>User Contact:</strong> ${user.contact }</p>
                <p class="text-gray-700 text-lg"><strong>User Email:</strong> ${user.email }</p>
                <p class="text-gray-700 text-lg"><strong>User role:</strong> ${user.role }</p>
            </div>
        </div>
    </div>

</body>
</html>
