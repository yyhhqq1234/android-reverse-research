package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.NumberPicker;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.netease.epay.sdk.base.R;
import java.util.Calendar;

/* loaded from: classes.dex */
public class YearDatePicker extends FrameLayout {
    private EditText edtMonth;
    private EditText edtYear;
    private Calendar mCurrentDate;
    private final NumberPicker mMonthSpinner;
    private NumberPicker.OnValueChangeListener mOnMonthChangedListener;
    private NumberPicker.OnValueChangeListener mOnYearChangedListener;
    private OnDateSetListener mOnYearDateChangedListener;
    private final NumberPicker mYearSpinner;
    private int month;
    private int year;

    /* loaded from: classes.dex */
    public interface OnDateSetListener {
        void onDateSet(YearDatePicker yearDatePicker, int i, int i2);
    }

    public YearDatePicker(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mOnYearChangedListener = new NumberPicker.OnValueChangeListener() { // from class: com.netease.epay.sdk.base.view.YearDatePicker.2
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker picker, int oldVal, int newVal) {
                YearDatePicker.this.year = newVal;
                YearDatePicker.this.mCurrentDate.set(1, YearDatePicker.this.year);
                YearDatePicker.this.onDateTimeChanged();
            }
        };
        this.mOnMonthChangedListener = new NumberPicker.OnValueChangeListener() { // from class: com.netease.epay.sdk.base.view.YearDatePicker.3
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker picker, int oldVal, int newVal) {
                YearDatePicker.this.month = newVal - 1;
                YearDatePicker.this.onDateTimeChanged();
            }
        };
        this.mCurrentDate = Calendar.getInstance();
        this.mCurrentDate.setTimeInMillis(System.currentTimeMillis());
        this.year = this.mCurrentDate.get(1);
        this.month = this.mCurrentDate.get(2);
        inflate(context, R.layout.epaysdk_llayout_datepick, this);
        this.mYearSpinner = (NumberPicker) findViewById(R.id.np_year);
        this.mYearSpinner.setMinValue(1900);
        this.mYearSpinner.setMaxValue(RpcException.ErrorCode.SERVER_OPERATIONTYPEMISSED);
        this.mYearSpinner.setOnValueChangedListener(this.mOnYearChangedListener);
        this.edtYear = getNumberEditText(this.mYearSpinner);
        this.mMonthSpinner = (NumberPicker) findViewById(R.id.np_month);
        this.mMonthSpinner.setMaxValue(12);
        this.mMonthSpinner.setMinValue(1);
        this.mMonthSpinner.setFormatter(new NumberPicker.Formatter() { // from class: com.netease.epay.sdk.base.view.YearDatePicker.1
            @Override // android.widget.NumberPicker.Formatter
            public String format(int value) {
                return String.format("%02d", Integer.valueOf(value));
            }
        });
        this.mMonthSpinner.setOnValueChangedListener(this.mOnMonthChangedListener);
        this.edtMonth = getNumberEditText(this.mMonthSpinner);
        refreshNumPicker();
    }

    public YearDatePicker(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public YearDatePicker(Context context) {
        this(context, null);
    }

    public void setDateTime(long time) {
        this.mCurrentDate.setTimeInMillis(time);
        this.year = this.mCurrentDate.get(1);
        this.month = this.mCurrentDate.get(2);
        refreshNumPicker();
    }

    private void refreshNumPicker() {
        this.mYearSpinner.setValue(this.year);
        this.mMonthSpinner.setValue(this.month + 1);
    }

    private EditText getNumberEditText(NumberPicker number) {
        return (EditText) number.findViewById(getResources().getIdentifier("android:id/numberpicker_input", null, null));
    }

    public int[] getDates() {
        if (this.edtYear != null && this.edtYear.getText().toString() != null) {
            try {
                this.year = Integer.parseInt(this.edtYear.getText().toString());
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        if (this.edtMonth != null && this.edtMonth.getText().toString() != null) {
            try {
                this.month = Integer.parseInt(this.edtMonth.getText().toString()) - 1;
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return new int[]{this.year, this.month};
    }

    public void setOnDateTimeChangedListener(OnDateSetListener callback) {
        this.mOnYearDateChangedListener = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDateTimeChanged() {
        if (this.mOnYearDateChangedListener != null) {
            this.mOnYearDateChangedListener.onDateSet(this, this.year, this.month);
        }
    }
}
