
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              // Back to Login section
              Row(
                children: [
                  const Icon(Icons.arrow_back, color: Color(0xFF6C63FF)),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () { 
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Back to Login',
                      style: TextStyle(
                        color: Color(0xFF6C63FF),
                        fontWeight: FontWeight.w500,
                      ),
                    
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Profile and heart/user icons
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 20,
                    child: Icon(Icons.favorite_border,
                        color: Colors.grey.withOpacity(0.3), size: 50),
                  ),
                  Positioned(
                    right: 20,
                    child: Icon(Icons.person_outline,
                        color: Colors.grey.withOpacity(0.3), size: 50),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF6C63FF),
                    ),
                    child: const Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Join DonateLink text
              const Text(
                'Join DonateLink',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Start your journey of giving',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              // Form fields section
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // Full Name field
                      _buildTextField(
                        hintText: 'Enter your full name',
                        icon: Icons.person_outline,
                        label: 'Full Name',
                      ),
                      const SizedBox(height: 20),
                      // Email Address field
                      _buildTextField(
                        hintText: 'example@gmail.com',
                        icon: Icons.email_outlined,
                        label: 'Email Address',
                      ),
                      const SizedBox(height: 20),
                      // Password field
                      _buildTextField(
                        hintText: '••••••',
                        icon: Icons.lock_outline,
                        label: 'Password',
                        isPassword: true,
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        hintText: 'Confirm your password',
                        icon: Icons.lock_outline,
                        label: 'Confirm Password',
                        isPassword: true,
                      ),
                      const SizedBox(height: 20),
                      // Terms and conditions checkbox
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {},
                            activeColor: const Color(0xFF6C63FF),
                          ),
                          Expanded(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'I agree to the ',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms of Service',
                                    style: TextStyle(
                                      color: Color(0xFF6C63FF),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and\n',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      color: Color(0xFF6C63FF),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Create Account button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6C63FF),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'or sign up with',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build text fields with labels and icons
  Widget _buildTextField({
    required String hintText,
    required IconData icon,
    required String label,
    String? initialValue,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: initialValue,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon, color: Colors.grey),
            suffixIcon: isPassword
                ? const Icon(Icons.remove_red_eye_outlined, color: Colors.grey)
                : null,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ],
    );
  }
}