<footer class="custom-footer py-8 px-6">
    <div class="container mx-auto">
        <!-- Top Section -->
        <div class="flex grid-cols-1 md:grid-cols-3 gap-8 justify-between">
            <!-- Links -->
            <div class="grid grid-cols-2 gap-6 text-gray-900">
                <div>
                    <h4 class="font-semibold">Courses</h4>
                    <ul class="mt-2 space-y-2">
                        <li><a href="#" class="hover:underline">Who We Are</a></li>
                        <li><a href="#" class="hover:underline">Success Stories</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="font-semibold">News</h4>
                    <ul class="mt-2 space-y-2">
                        <li><a href="#" class="hover:underline">Media Gallery</a></li>
                    </ul>
                </div>
            </div>
            <!-- Logo -->
            <div class="flex justify-center md:justify-end">
                <img src="{{ asset('images/Logo.png') }}" alt="Learning Space Logo" class="h-12">
            </div>
        </div>

        <!-- Divider -->
        <hr class="my-6 border-gray-300">

        <!-- Bottom Section -->
        <div class="flex flex-col md:flex-row justify-between items-center text-gray-700 text-sm">
            <div class="flex flex-col space-y-2">
                <p>Riyadh King Abdul Aziz Branch Rd, </p>
                <p>Alyasmin, Riyadh 13322, KSA</p>
            </div>
            <div class="space-y-6">
                <p class="text-gray-400 text-xs">© 2024 LEARNING SPACE COMPANY, INC. ALL RIGHTS RESERVED.</p>
                <!-- Social Icons -->
                <div class="flex space-x-4 mt-4 md:mt-0 justify-end">
                    <a href="#" class="text-gray-700 hover:text-black">
                        <img src="{{ asset('images/icons/social/linkedin.png') }}" alt="LinkedIn">
                    </a>
                    <a href="#" class="text-gray-700 hover:text-black">
                        <img src="{{ asset('images/icons/social/x.png') }}" alt="X">
                    </a>
                    <a href="#" class="text-gray-700 hover:text-black">
                        <img src="{{ asset('images/icons/social/facebook.png') }}" alt="Facebook">
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>
