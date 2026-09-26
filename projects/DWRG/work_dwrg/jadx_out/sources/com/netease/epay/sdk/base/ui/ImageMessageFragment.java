package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.view.FragmentTitleBar;

/* loaded from: classes.dex */
public class ImageMessageFragment extends SdkFragment implements View.OnClickListener {
    public static ImageMessageFragment getInstance(String title, String desc, int imgResId) {
        ImageMessageFragment imageMessageFragment = new ImageMessageFragment();
        Bundle bundle = new Bundle();
        bundle.putString("sdk_img_msg_frag_title", title);
        bundle.putString("sdk_img_msg_frag_desc", desc);
        bundle.putInt("sdk_img_msg_frag_img_id", imgResId);
        imageMessageFragment.setArguments(bundle);
        return imageMessageFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        String string = arguments.getString("sdk_img_msg_frag_title");
        String string2 = arguments.getString("sdk_img_msg_frag_desc");
        int i = arguments.getInt("sdk_img_msg_frag_img_id");
        View inflate = inflater.inflate(R.layout.epaysdk_frag_img_msg, (ViewGroup) null);
        FragmentTitleBar fragmentTitleBar = (FragmentTitleBar) inflate.findViewById(R.id.ftb);
        fragmentTitleBar.setCloseListener(this);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.iv_picmsg_pic);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_picmsg_desc);
        fragmentTitleBar.setTitle(string);
        textView.setText(string2);
        imageView.setImageResource(i);
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.iv_frag_close_c) {
            dismissAllowingStateLoss();
        }
    }
}
