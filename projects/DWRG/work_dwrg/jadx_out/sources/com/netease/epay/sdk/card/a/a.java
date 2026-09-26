package com.netease.epay.sdk.card.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.card.R;
import java.util.ArrayList;

/* compiled from: CardListAdapter.java */
/* loaded from: classes.dex */
public class a extends BaseAdapter {
    public int a = 0;
    private ArrayList<Card> b;
    private LayoutInflater c;

    public a(Context context, ArrayList<Card> arrayList) {
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
        this.b = arrayList;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup parent) {
        C0011a c0011a;
        Card card = this.b != null ? this.b.get(position) : null;
        if (card == null) {
            return view;
        }
        if (view == null) {
            C0011a c0011a2 = new C0011a();
            view = this.c.inflate(R.layout.epaysdk_item_bank_card, (ViewGroup) null);
            c0011a2.a = (TextView) view.findViewById(R.id.tv_item_cards_card_info);
            c0011a2.b = (ImageView) view.findViewById(R.id.iv_item_cards_checked);
            view.setTag(c0011a2);
            c0011a = c0011a2;
        } else {
            c0011a = (C0011a) view.getTag();
        }
        c0011a.a.setText(a(card));
        if (this.a == position) {
            c0011a.b.setVisibility(0);
        } else {
            c0011a.b.setVisibility(8);
        }
        return view;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.b != null) {
            return this.b.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        if (this.b == null || this.b.size() <= position) {
            return null;
        }
        return this.b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    public String a(Card card) {
        return card != null ? card.bankName + " " + Card.getCardDesFromCardType(card.cardType) + " (尾号" + card.cardNoTail + ")" : "";
    }

    /* compiled from: CardListAdapter.java */
    /* renamed from: com.netease.epay.sdk.card.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0011a {
        public TextView a;
        public ImageView b;

        C0011a() {
        }
    }
}
