package com.netease.epay.sdk.base.util;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.TextView;
import com.netease.epay.sdk.base.view.ContentWithSpaceEditText;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class EditBindButtonUtil implements TextWatcher {
    private Button btn;
    private ArrayList<TextView> editTexts;

    public EditBindButtonUtil(Button b) {
        this.btn = b;
        if (this.btn != null) {
            this.btn.setEnabled(false);
        }
        this.editTexts = new ArrayList<>(6);
    }

    public void clearEditTexts() {
        this.editTexts.clear();
    }

    public void addEditText(TextView e) {
        if (e != null) {
            e.addTextChangedListener(this);
            this.editTexts.add(e);
            afterTextChanged(null);
        }
    }

    public void setButton(Button btn) {
        this.btn = btn;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence s, int start, int before, int count) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable s) {
        boolean z;
        if (this.btn != null) {
            int i = 0;
            boolean z2 = true;
            while (true) {
                if (i >= this.editTexts.size()) {
                    z = z2;
                    break;
                }
                TextView textView = this.editTexts.get(i);
                if (textView instanceof ContentWithSpaceEditText) {
                    z = !((ContentWithSpaceEditText) textView).checkTextWrong(false);
                } else {
                    z = !TextUtils.isEmpty(textView.getText().toString());
                }
                if (!z) {
                    break;
                }
                i++;
                z2 = z;
            }
            this.btn.setEnabled(z);
        }
    }
}
