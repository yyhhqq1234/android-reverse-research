package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.model.DiscountGroupItem;

/* compiled from: DiscountDetailFragment.java */
/* loaded from: classes.dex */
public class c extends SdkFragment {
    public static c a() {
        return new c();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_discount_detail, (ViewGroup) null);
        FragmentTitleBar fragmentTitleBar = (FragmentTitleBar) inflate.findViewById(R.id.ftb);
        fragmentTitleBar.setBackListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                c.this.dismissAllowingStateLoss();
                if (c.this.getActivity() instanceof PayingActivity) {
                    ((PayingActivity) c.this.getActivity()).a();
                }
            }
        });
        ExpandableListView expandableListView = (ExpandableListView) inflate.findViewById(R.id.lvDiscount);
        expandableListView.setGroupIndicator(null);
        final d dVar = new d(expandableListView);
        expandableListView.setAdapter(dVar);
        for (int i = 0; i < 2; i++) {
            expandableListView.collapseGroup(i);
        }
        fragmentTitleBar.setBackListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.c.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                DiscountGroupItem.setDiscountData(dVar.a);
                c.this.dismissAllowingStateLoss();
                if (c.this.getActivity() instanceof PayingActivity) {
                    ((PayingActivity) c.this.getActivity()).a();
                }
            }
        });
        return inflate;
    }
}
