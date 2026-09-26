package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.model.SignAgreementInfo;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.ServiceListAdapter;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.view.actionsheet.CustomActionSheet;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AgreementTextView extends TextView implements View.OnClickListener {
    private CustomActionSheet actionSheet;
    private ServiceListAdapter adapter;
    private ArrayList<SignAgreementInfo> agreementList;
    private FragmentActivity mActivity;
    private View sheetContentView;

    public AgreementTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setOnClickListener(this);
        if (getContext() instanceof SdkActivity) {
            this.mActivity = (FragmentActivity) getContext();
        } else if (getContext() instanceof ContextThemeWrapper) {
            this.mActivity = (FragmentActivity) ((ContextThemeWrapper) getContext()).getBaseContext();
        }
    }

    public void setAgreementList(ArrayList<SignAgreementInfo> agreementList) {
        this.agreementList = agreementList;
        if (this.adapter == null) {
            this.adapter = new ServiceListAdapter(this.mActivity, agreementList);
        } else {
            this.adapter.setDatas(agreementList);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (this.mActivity != null && this.agreementList != null) {
            if (this.sheetContentView == null) {
                this.sheetContentView = this.mActivity.getLayoutInflater().inflate(R.layout.epaysdk_view_service_sheet, (ViewGroup) null);
                ListView listView = (ListView) this.sheetContentView.findViewById(R.id.lv_banks_service);
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.netease.epay.sdk.base.view.AgreementTextView.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        JumpUtil.gotoServePact(AgreementTextView.this.mActivity, ((SignAgreementInfo) AgreementTextView.this.agreementList.get(position)).agreementTitle, ((SignAgreementInfo) AgreementTextView.this.agreementList.get(position)).agreementAddress, true);
                        AgreementTextView.this.actionSheet.dismiss();
                    }
                });
                listView.setAdapter((ListAdapter) this.adapter);
                ((TextView) this.sheetContentView.findViewById(R.id.tv_cancel_service)).setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.base.view.AgreementTextView.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v2) {
                        AgreementTextView.this.actionSheet.dismiss();
                    }
                });
                this.sheetContentView.setOnClickListener(null);
                this.actionSheet = new CustomActionSheet(this.mActivity);
            }
            this.actionSheet.show(this.sheetContentView);
            if (this.adapter != null) {
                this.adapter.notifyDataSetChanged();
            }
        }
    }

    public void disMissSheet() {
        if (this.actionSheet != null && this.actionSheet.isShow()) {
            this.actionSheet.dismiss();
        }
    }

    public boolean isActionSheetShow() {
        return this.actionSheet != null && this.actionSheet.isShow();
    }
}
