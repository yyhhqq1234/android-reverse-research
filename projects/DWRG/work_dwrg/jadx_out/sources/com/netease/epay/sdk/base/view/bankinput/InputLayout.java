package com.netease.epay.sdk.base.view.bankinput;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class InputLayout extends LinearLayout {
    private HashMap<Integer, InputItemLayout> items;
    private ArrayList<Integer> types;

    public InputLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        setOrientation(1);
    }

    public void clear() {
        removeAllViews();
        if (this.items != null) {
            this.items.clear();
        }
        if (this.types != null) {
            this.types.clear();
        }
    }

    public void add(int type) {
        add(createItem(type));
    }

    public void add(InputItem item) {
        InputItemLayout inputItemLayout = new InputItemLayout(getContext());
        inputItemLayout.init(item);
        if (this.items == null) {
            this.items = new HashMap<>();
        }
        if (this.types == null) {
            this.types = new ArrayList<>();
        }
        this.items.put(Integer.valueOf(item.itemType), inputItemLayout);
        this.types.add(Integer.valueOf(item.itemType));
    }

    public void inflate() {
        LayoutInflater.from(getContext()).inflate(R.layout.epaysdk_view_divider, this);
        int i = 0;
        while (true) {
            int i2 = i;
            if (this.types == null || i2 >= this.types.size()) {
                break;
            }
            addView(this.items.get(this.types.get(i2)));
            if (i2 < this.types.size() - 1) {
                LayoutInflater.from(getContext()).inflate(R.layout.epaysdk_view_left_divider, this);
            }
            i = i2 + 1;
        }
        LayoutInflater.from(getContext()).inflate(R.layout.epaysdk_view_divider, this);
    }

    public String getContent(int type) {
        if (this.items == null) {
            return null;
        }
        InputItemLayout inputItemLayout = this.items.get(Integer.valueOf(type));
        return inputItemLayout != null ? inputItemLayout.getContent() : "";
    }

    public void bindButton(EditBindButtonUtil util) {
        Iterator<Map.Entry<Integer, InputItemLayout>> it = this.items.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().bindButton(util);
        }
    }

    public InputItemLayout getItem(int type) {
        if (this.items == null) {
            return null;
        }
        return this.items.get(Integer.valueOf(type));
    }

    public InputItem createItem(int type) {
        return new InputItem(type);
    }
}
