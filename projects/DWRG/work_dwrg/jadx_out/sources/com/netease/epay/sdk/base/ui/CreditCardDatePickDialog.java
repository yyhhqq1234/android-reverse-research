package com.netease.epay.sdk.base.ui;

import android.R;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.netease.epay.sdk.base.view.YearDatePicker;
import com.netease.epay.sdk.base.view.listener.CreditDatePickListener;
import java.util.Calendar;

/* loaded from: classes.dex */
public class CreditCardDatePickDialog extends DialogFragment {
    private static long lastDate = System.currentTimeMillis();
    private View btnNo;
    private View btnYes;
    private View.OnClickListener clickListener = new View.OnClickListener() { // from class: com.netease.epay.sdk.base.ui.CreditCardDatePickDialog.1
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (v != CreditCardDatePickDialog.this.btnNo) {
                if (v == CreditCardDatePickDialog.this.btnYes) {
                    int[] dates = CreditCardDatePickDialog.this.yearDatePicker.getDates();
                    if (dates != null && dates.length > 1) {
                        CreditCardDatePickDialog.this.year = dates[0];
                        CreditCardDatePickDialog.this.month = dates[1];
                    }
                    if (CreditCardDatePickDialog.this.year < 2000) {
                        CreditCardDatePickDialog.this.year += RpcException.ErrorCode.SERVER_SESSIONSTATUS;
                    }
                    if (CreditCardDatePickDialog.this.mListener != null) {
                        String format = String.format("%02d", Integer.valueOf(CreditCardDatePickDialog.this.month + 1));
                        CreditCardDatePickDialog.this.mListener.onDateSet(format + "/" + String.format("%02d", Integer.valueOf(CreditCardDatePickDialog.this.year % 100)), String.format("%04d", Integer.valueOf(CreditCardDatePickDialog.this.year)) + format);
                    }
                    Calendar calendar = Calendar.getInstance();
                    calendar.set(CreditCardDatePickDialog.this.year, CreditCardDatePickDialog.this.month, 1);
                    long unused = CreditCardDatePickDialog.lastDate = calendar.getTimeInMillis();
                    CreditCardDatePickDialog.this.dismiss();
                    return;
                }
                return;
            }
            CreditCardDatePickDialog.this.dismiss();
        }
    };
    private CreditDatePickListener mListener;
    private int month;
    private int year;
    private YearDatePicker yearDatePicker;

    public static void show(FragmentActivity activity, CreditDatePickListener mListener) {
        CreditCardDatePickDialog creditCardDatePickDialog = new CreditCardDatePickDialog();
        creditCardDatePickDialog.mListener = mListener;
        creditCardDatePickDialog.show(activity.getSupportFragmentManager(), "CreditCardDatePickDialog");
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.Theme.Holo.Light.Dialog.NoActionBar);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View inflate = inflater.inflate(com.netease.epay.sdk.base.R.layout.epaysdk_fragdialog_credit_datepick, (ViewGroup) null);
        this.yearDatePicker = (YearDatePicker) inflate.findViewById(com.netease.epay.sdk.base.R.id.year_date_picker);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(lastDate);
        this.year = calendar.get(1);
        this.month = calendar.get(2);
        this.yearDatePicker.setDateTime(lastDate);
        this.btnYes = inflate.findViewById(com.netease.epay.sdk.base.R.id.btn_twobtnmsg_dialog_right);
        this.btnNo = inflate.findViewById(com.netease.epay.sdk.base.R.id.btn_twobtnmsg_dialog_left);
        this.btnYes.setOnClickListener(this.clickListener);
        this.btnNo.setOnClickListener(this.clickListener);
        return inflate;
    }
}
