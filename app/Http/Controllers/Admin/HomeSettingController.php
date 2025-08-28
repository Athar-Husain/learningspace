<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CourseFormSetting;
use App\Models\Home;
use App\Models\Setting;
use App\Traits\General;
use App\Traits\ImageSaveTrait;
use Illuminate\Http\Request;
use Auth;

class HomeSettingController extends Controller
{
    use General, ImageSaveTrait;

    public function themeSettings()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = __('Theme Settings');
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['themeSettingsActiveClass'] = 'active';

        return view('admin.application_settings.home.theme-settings', $data);
    }

    public function sectionSettings()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Section Settings';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['sectionSettingsActiveClass'] = 'active';
        $data['home'] = Home::first();

        return view('admin.application_settings.home.section-settings', $data);
    }

    public function sectionSettingsStatusChange(Request $request)
    {
        $attribute_name = $request->attribute_name;
        $status = $request->status;
        $home = Home::first();
        if ($attribute_name) {
            $home->update([
                $attribute_name => $status,
            ]);
        }

        return response()->json([
            'msg' => 'success'
        ]);
    }


    public function bannerSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Banner Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['bannerSectionActiveClass'] = 'active';
        $data['home'] = Home::first();

        return view('admin.application_settings.home.banner-section', $data);
    }

    public function bannerSectionUpdate(Request $request)
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $request->validate([
            'banner_image' => 'mimes:png,svg|file|max:1024'
        ]);

        $home = Home::first();
        if (!$home) {
            $home = new Home();
            if ($request->hasFile('banner_image')) {
                $home->banner_image = $this->saveImage('home', $request->banner_image, 'null', 'null');
            }

        } else {
            if ($request->hasFile('banner_image')) {
                $home->banner_image = $this->updateImage('home', $request->banner_image, $home->banner_image, 'null', 'null');
            }
        }

        $home->banner_mini_words_title = $request->banner_mini_words_title;
        $home->banner_first_line_title = $request->banner_first_line_title;
        $home->banner_second_line_title = $request->banner_second_line_title;
        $home->banner_second_line_changeable_words = $request->banner_second_line_changeable_words;
        $home->banner_third_line_title = $request->banner_third_line_title;
        $home->banner_subtitle = $request->banner_subtitle;

        $home->banner_first_button_name = $request->banner_first_button_name;
        $home->banner_first_button_link = $request->banner_first_button_link;

        $home->banner_second_button_name = $request->banner_second_button_name;
        $home->banner_second_button_link = $request->banner_second_button_link;
        $home->banner_fourth_line_title = $request->banner_fourth_line_title;

        if ($request->has('banner_video')) {
            $bannerVideo = $this->uploadFileWithDetails('home', $request->banner_video, null, null);
            if (!$bannerVideo['is_uploaded']) {
                $this->showToastrMessage('error', __('Something went wrong! Failed to upload file'));
                return redirect()->back();
            }
            $home->banner_video = $bannerVideo['path'];
        }
        $home->save();

        // for demo

        if (env('IS_LOCAL', 0)) {
            if ($request->hasFile('banner_image')) {
                $request->validate([
                    'banner_image' => 'mimes:png,svg'
                ]);
                $option = Setting::firstOrCreate(['option_key' => 'banner_image_' . get_option('theme', THEME_DEFAULT)]);
                $option->option_value = $this->saveImage('setting', $request->banner_image, null, null);
                $option->save();
            }
        }

        //for theme 3
        if (get_option('theme', THEME_DEFAULT) == THEME_THREE) {
            if ($request->hasFile('banner_right_card_icon')) {
                $request->validate([
                    'banner_right_card_icon' => 'mimes:png,svg'
                ]);
                $option = Setting::firstOrCreate(['option_key' => 'banner_right_card_icon']);
                $option->option_value = $this->saveImage('setting', $request->banner_right_card_icon, null, null);
                $option->save();
            }
            if ($request->hasFile('banner_left_card_icon')) {
                $request->validate([
                    'banner_left_card_icon' => 'mimes:png,svg'
                ]);
                $option = Setting::firstOrCreate(['option_key' => 'banner_left_card_icon']);
                $option->option_value = $this->saveImage('setting', $request->banner_left_card_icon, null, null);
                $option->save();
            }

            $option = Setting::firstOrCreate(['option_key' => 'banner_left_card_title']);
            $option->option_value = $request->banner_left_card_title;
            $option->save();
            $option = Setting::firstOrCreate(['option_key' => 'banner_left_card_description']);
            $option->option_value = $request->banner_left_card_description;
            $option->save();
            $option = Setting::firstOrCreate(['option_key' => 'banner_right_card_title']);
            $option->option_value = $request->banner_right_card_title;
            $option->save();
            $option = Setting::firstOrCreate(['option_key' => 'banner_right_card_description']);
            $option->option_value = $request->banner_right_card_description;
            $option->save();
        }
        //END for theme 3

        $this->showToastrMessage('success', __('Updated Successfully'));
        return redirect()->back();
    }



    // added here 



    public function bridgeGapSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort(403);
        }

        $data['title'] = 'Bridge the Gap Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['bridgeGapSectionActiveClass'] = 'active';
        $data['home'] = Home::first();

        return view('admin.application_settings.home.bridge-gap-section', $data);
    }

    public function bridgeGapSectionUpdate(Request $request)
    {
        if (!Auth::user()->can('home_setting')) {
            abort(403);
        }

        $request->validate([
            'bridge_gap_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'bridge_gap_show' => 'nullable|boolean',
            'bridge_gap_button_link' => 'nullable|url',
        ]);

        $home = Home::first();
        if (!$home) {
            $home = new Home();
        }

        // Save or update image
        if ($request->hasFile('bridge_gap_image')) {
            if ($home->bridge_gap_image) {
                // Update image: You can implement updateImage() similarly as in banner
                $home->bridge_gap_image = $this->updateImage('home', $request->bridge_gap_image, $home->bridge_gap_image, null, null);
            } else {
                // Save new image
                $home->bridge_gap_image = $this->saveImage('home', $request->bridge_gap_image, null, null);
            }
        }

        // Save multi-language fields as JSON
        $home->bridge_gap_title = $request->bridge_gap_title;               // expect array like ['en' => 'title', 'fr' => 'titre']
        $home->bridge_gap_description = $request->bridge_gap_description;   // same as above
        $home->bridge_gap_button_name = $request->bridge_gap_button_name;   // same as above

        $home->bridge_gap_button_link = $request->bridge_gap_button_link;
        $home->bridge_gap_show = $request->bridge_gap_show ?? false;

        $home->save();

        $this->showToastrMessage('success', __('Updated Successfully'));
        return redirect()->back();
    }

    public function courseFormSettingUpdate(Request $request)
    {
        if (!Auth::user()->can('home_setting')) {
            abort(403); // Unauthorized
        }

        // Validate incoming data (form inputs)
        $request->validate([
            'course_title' => 'required|string|max:255',
            'course_description' => 'required|string',
            'course_duration' => 'required|string',
            'course_instructor' => 'required|string|max:255',
            'contact_heading' => 'nullable|string|max:255', // Adding validation for the contact fields
            'contact_subheading' => 'nullable|string|max:255',
            'contact_email' => 'nullable|email|max:255',
            'contact_location' => 'nullable|string|max:255',
            'contact_phone' => 'nullable|string|max:255',
        ]);

        // Update or create settings in the database for courses
        CourseFormSetting::updateOrCreate(['key' => 'course_title'], ['value' => $request->course_title]);
        CourseFormSetting::updateOrCreate(['key' => 'course_description'], ['value' => $request->course_description]);
        CourseFormSetting::updateOrCreate(['key' => 'course_duration'], ['value' => $request->course_duration]);
        CourseFormSetting::updateOrCreate(['key' => 'course_instructor'], ['value' => $request->course_instructor]);

        // Update or create contact-related settings
        CourseFormSetting::updateOrCreate(['key' => 'contact_heading'], ['value' => $request->contact_heading]);
        CourseFormSetting::updateOrCreate(['key' => 'contact_subheading'], ['value' => $request->contact_subheading]);
        CourseFormSetting::updateOrCreate(['key' => 'contact_email'], ['value' => $request->contact_email]);
        CourseFormSetting::updateOrCreate(['key' => 'contact_location'], ['value' => $request->contact_location]);
        CourseFormSetting::updateOrCreate(['key' => 'contact_phone'], ['value' => $request->contact_phone]);

        // Optionally show a success message
        $this->showToastrMessage('success', __('Settings updated successfully.'));

        // Redirect back with a success message
        return redirect()->back();
    }



    public function courseFormSetting()
    {
        if (!Auth::user()->can('home_setting')) {
            abort(403);
        }

        return view('admin.application_settings.home.course-form-settings', [
            'courseTitle' => CourseFormSetting::getSetting('course_title'),
            'courseDescription' => CourseFormSetting::getSetting('course_description'),
            'courseDuration' => CourseFormSetting::getSetting('course_duration'),
            'courseInstructor' => CourseFormSetting::getSetting('course_instructor'),
            'contactHeading' => CourseFormSetting::getSetting('contact_heading'),
            'contactSubheading' => CourseFormSetting::getSetting('contact_subheading'),
            'contactEmail' => CourseFormSetting::getSetting('contact_email'),
            'contactLocation' => CourseFormSetting::getSetting('contact_location'),
            'contactPhone' => CourseFormSetting::getSetting('contact_phone'),
        ]);
    }




    // ended here

    public function specialFeatureSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Home Special Feature Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['specialSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.special-feature-section', $data);
    }

    public function courseSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Course Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['courseSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.course-section', $data);
    }
    public function categoryCourseSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Category Course Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['categoryCourseSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.category-course-section', $data);
    }
    public function upcomingCourseSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Upcoming Course Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['upcomingCourseSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.upcoming-course-section', $data);
    }

    public function productSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Product Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['productSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.product-section', $data);
    }

    public function bundleCourseSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Bundle Course Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['bundleCourseSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.bundle-course-section', $data);
    }

    public function topCategorySection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Top Category Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['topCategorySectionActiveClass'] = 'active';

        return view('admin.application_settings.home.top-category-section', $data);
    }

    public function topInstructorSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Top Instructor Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['topInstructorSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.top-instructor-section', $data);
    }

    public function becomeInstructorVideoSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Become Instructor Video Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['becomeInstructorVideoSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.become-instructor-video-section', $data);
    }

    public function customerSaySection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Customer Say Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['customerSaySectionActiveClass'] = 'active';

        return view('admin.application_settings.home.customer-say-section', $data);
    }

    public function achievementSection()
    {
        if (!Auth::user()->can('home_setting')) {
            abort('403');
        } // end permission checking

        $data['title'] = 'Achievement Section';
        $data['navApplicationSettingParentActiveClass'] = 'mm-active';
        $data['subNavHomeSettingsActiveClass'] = 'mm-active';
        $data['achievementSectionActiveClass'] = 'active';

        return view('admin.application_settings.home.achievement-section', $data);
    }
}