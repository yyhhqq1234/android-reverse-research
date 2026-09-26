package com.netease.epay.sdk.base.view.gridpwd;

import android.text.method.PasswordTransformationMethod;
import android.view.View;

/* loaded from: classes.dex */
class CustomPasswordTransformationMethod extends PasswordTransformationMethod {
    private String transformation;

    public CustomPasswordTransformationMethod(String transformation) {
        this.transformation = transformation;
    }

    @Override // android.text.method.PasswordTransformationMethod, android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence source, View view) {
        return new PasswordCharSequence(source);
    }

    /* loaded from: classes.dex */
    private class PasswordCharSequence implements CharSequence {
        private CharSequence mSource;

        public PasswordCharSequence(CharSequence source) {
            this.mSource = source;
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.mSource.length();
        }

        @Override // java.lang.CharSequence
        public char charAt(int index) {
            return CustomPasswordTransformationMethod.this.transformation.charAt(0);
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int start, int end) {
            return this.mSource.subSequence(start, end);
        }
    }
}
