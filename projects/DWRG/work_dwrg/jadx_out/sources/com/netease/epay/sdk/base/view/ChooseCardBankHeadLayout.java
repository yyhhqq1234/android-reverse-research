package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.model.SupportCardTypeObj;
import com.netease.epay.sdk.base.util.UiUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ChooseCardBankHeadLayout extends LinearLayout {
    private static final int KEY_TAG_CARD_INDEX = R.layout.epaysdk_item_bank_card;
    private View.OnClickListener cardClickListener;
    private List<View> cardTypeSelectViews;
    private final LinearLayout.LayoutParams layoutParamsWidFill_HigWrap;
    private OnCardTypeSelectListener onCardTypeSelectListener;
    private int selectIndex;

    /* loaded from: classes.dex */
    public interface OnCardTypeSelectListener {
        void onSelect(int i, Object obj);
    }

    public ChooseCardBankHeadLayout(Context context) {
        this(context, null);
    }

    public ChooseCardBankHeadLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.cardClickListener = new View.OnClickListener() { // from class: com.netease.epay.sdk.base.view.ChooseCardBankHeadLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intValue;
                if (view.getTag(ChooseCardBankHeadLayout.KEY_TAG_CARD_INDEX) != null && (view.getTag(ChooseCardBankHeadLayout.KEY_TAG_CARD_INDEX) instanceof Integer) && ChooseCardBankHeadLayout.this.selectIndex != (intValue = ((Integer) view.getTag(ChooseCardBankHeadLayout.KEY_TAG_CARD_INDEX)).intValue())) {
                    ChooseCardBankHeadLayout.this.reFreshSelectImage(intValue);
                    ChooseCardBankHeadLayout.this.selectIndex = intValue;
                    if (ChooseCardBankHeadLayout.this.onCardTypeSelectListener != null) {
                        ChooseCardBankHeadLayout.this.onCardTypeSelectListener.onSelect(intValue, view.getTag());
                    }
                }
            }
        };
        this.layoutParamsWidFill_HigWrap = new LinearLayout.LayoutParams(-1, -2);
        this.cardTypeSelectViews = new ArrayList(5);
        this.selectIndex = 0;
        setOrientation(1);
        TextView createTipView = createTipView("卡类型", context);
        TextView createTipView2 = createTipView("卡片所属银行或卡组织", context);
        addView(createTipView, this.layoutParamsWidFill_HigWrap);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 1);
        addView(createDivierView(context), layoutParams);
        addView(createTipView2, this.layoutParamsWidFill_HigWrap);
        addView(createDivierView(context), layoutParams);
    }

    public void setOnItemSelectedListener(OnCardTypeSelectListener onCardTypeSelectListener) {
        this.onCardTypeSelectListener = onCardTypeSelectListener;
    }

    public void reloadDatas(Context context, List<SupportCardTypeObj> cards, int selectIndex) {
        int i;
        int childCount = getChildCount();
        if (childCount > 4) {
            removeViews(2, childCount - 4);
        }
        this.cardTypeSelectViews.clear();
        int i2 = 0;
        for (SupportCardTypeObj supportCardTypeObj : cards) {
            if (supportCardTypeObj != null) {
                View inflate = inflate(context, R.layout.epaysdk_item_choose_bank, null);
                ((RelativeLayout.LayoutParams) inflate.findViewById(R.id.v_divier).getLayoutParams()).leftMargin = 0;
                View findViewById = inflate.findViewById(R.id.iv_item_cards_checked);
                if (i2 != selectIndex) {
                    findViewById.setVisibility(8);
                } else {
                    findViewById.setVisibility(0);
                    if (this.onCardTypeSelectListener != null) {
                        this.onCardTypeSelectListener.onSelect(selectIndex, supportCardTypeObj);
                    }
                    this.selectIndex = selectIndex;
                }
                this.cardTypeSelectViews.add(findViewById);
                ((TextView) inflate.findViewById(R.id.tv_bank_name)).setText(supportCardTypeObj.description);
                addView(inflate, i2 + 2, this.layoutParamsWidFill_HigWrap);
                inflate.setClickable(true);
                inflate.setTag(supportCardTypeObj);
                inflate.setTag(KEY_TAG_CARD_INDEX, Integer.valueOf(i2));
                inflate.setOnClickListener(this.cardClickListener);
                i = i2 + 1;
            } else {
                i = i2;
            }
            i2 = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reFreshSelectImage(int index) {
        try {
            this.cardTypeSelectViews.get(this.selectIndex).setVisibility(8);
            this.cardTypeSelectViews.get(index).setVisibility(0);
        } catch (Exception e) {
        }
    }

    private TextView createTipView(String info, Context context) {
        TextView textView = new TextView(context);
        int dp2px = UiUtil.dp2px(context, 15);
        textView.setPadding(dp2px, dp2px, dp2px, dp2px);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Color.parseColor("#999999"));
        textView.setBackgroundResource(R.color.epaysdk_common_bg);
        textView.setText(info);
        return textView;
    }

    private View createDivierView(Context context) {
        View view = new View(context);
        view.setBackgroundResource(R.color.epaysdk_divier_color);
        return view;
    }
}
