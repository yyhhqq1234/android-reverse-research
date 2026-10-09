package com.applovin.mediation.nativeAds.adPlacer;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.applovin.impl.hl;
import com.applovin.mediation.MaxAd;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class MaxRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements MaxAdPlacer.Listener {
    private final MaxAdPlacer a;
    private final RecyclerView.Adapter b;
    private final b c;
    private RecyclerView d;
    private hl e;
    private MaxAdPlacer.Listener f;
    private int g;
    private AdPositionBehavior h;

    public enum AdPositionBehavior {
        DYNAMIC_EXCEPT_ON_APPEND,
        DYNAMIC,
        FIXED
    }

    public static class MaxAdRecyclerViewHolder extends RecyclerView.ViewHolder {
        private final ViewGroup a;

        public MaxAdRecyclerViewHolder(View view) {
            super(view);
            this.a = (ViewGroup) view.findViewById(R.id.applovin_native_ad_view_container);
        }

        public ViewGroup getContainerView() {
            return this.a;
        }
    }

    class a implements hl.a {
        a() {
        }

        @Override // com.applovin.impl.hl.a
        public void a(int i, int i2) {
            MaxRecyclerAdapter.this.a.updateFillablePositions(i, Math.min(i2 + MaxRecyclerAdapter.this.g, MaxRecyclerAdapter.this.getItemCount() - 1));
        }
    }

    private class b extends RecyclerView.AdapterDataObserver {
        private b() {
        }

        public void onChanged() {
            MaxRecyclerAdapter.this.notifyDataSetChanged();
        }

        public void onItemRangeChanged(int i, int i2) {
            int adjustedPosition = MaxRecyclerAdapter.this.a.getAdjustedPosition(i);
            MaxRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition, (MaxRecyclerAdapter.this.a.getAdjustedPosition((i + i2) - 1) - adjustedPosition) + 1);
        }

        public void onItemRangeInserted(int i, int i2) {
            boolean z = i + i2 >= MaxRecyclerAdapter.this.b.getItemCount();
            if (MaxRecyclerAdapter.this.h == AdPositionBehavior.FIXED || (MaxRecyclerAdapter.this.h == AdPositionBehavior.DYNAMIC_EXCEPT_ON_APPEND && z)) {
                MaxRecyclerAdapter.this.notifyDataSetChanged();
                return;
            }
            int adjustedPosition = MaxRecyclerAdapter.this.a.getAdjustedPosition(i);
            for (int i3 = 0; i3 < i2; i3++) {
                MaxRecyclerAdapter.this.a.insertItem(adjustedPosition);
            }
            MaxRecyclerAdapter.this.notifyItemRangeInserted(adjustedPosition, i2);
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
            MaxRecyclerAdapter.this.notifyDataSetChanged();
        }

        public void onItemRangeRemoved(int i, int i2) {
            int itemCount = MaxRecyclerAdapter.this.b.getItemCount();
            boolean z = i + i2 >= itemCount;
            if (MaxRecyclerAdapter.this.h == AdPositionBehavior.FIXED || (MaxRecyclerAdapter.this.h == AdPositionBehavior.DYNAMIC_EXCEPT_ON_APPEND && z)) {
                MaxRecyclerAdapter.this.notifyDataSetChanged();
                return;
            }
            int adjustedPosition = MaxRecyclerAdapter.this.a.getAdjustedPosition(i);
            int adjustedCount = MaxRecyclerAdapter.this.a.getAdjustedCount(itemCount + i2);
            for (int i3 = 0; i3 < i2; i3++) {
                MaxRecyclerAdapter.this.a.removeItem(adjustedPosition);
            }
            int adjustedCount2 = MaxRecyclerAdapter.this.a.getAdjustedCount(itemCount);
            int size = adjustedCount - adjustedCount2;
            Collection<Integer> collectionClearTrailingAds = MaxRecyclerAdapter.this.a.clearTrailingAds(adjustedCount2 - 1);
            if (!collectionClearTrailingAds.isEmpty()) {
                size += collectionClearTrailingAds.size();
            }
            MaxRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (size - i2), size);
        }

        /* synthetic */ b(MaxRecyclerAdapter maxRecyclerAdapter, a aVar) {
            this();
        }
    }

    public MaxRecyclerAdapter(MaxAdPlacerSettings maxAdPlacerSettings, RecyclerView.Adapter adapter, Activity activity) {
        b bVar = new b(this, null);
        this.c = bVar;
        this.g = 8;
        this.h = AdPositionBehavior.DYNAMIC_EXCEPT_ON_APPEND;
        MaxAdPlacer maxAdPlacer = new MaxAdPlacer(maxAdPlacerSettings, activity);
        this.a = maxAdPlacer;
        maxAdPlacer.setListener(this);
        super.setHasStableIds(adapter.hasStableIds());
        this.b = adapter;
        adapter.registerAdapterDataObserver(bVar);
    }

    public void destroy() {
        try {
            this.b.unregisterAdapterDataObserver(this.c);
        } catch (Exception unused) {
        }
        this.a.destroy();
        hl hlVar = this.e;
        if (hlVar != null) {
            hlVar.a();
        }
    }

    public MaxAdPlacer getAdPlacer() {
        return this.a;
    }

    public int getAdjustedPosition(int i) {
        return this.a.getAdjustedPosition(i);
    }

    public int getItemCount() {
        return this.a.getAdjustedCount(this.b.getItemCount());
    }

    public long getItemId(int i) {
        if (this.b.hasStableIds()) {
            return this.a.isFilledPosition(i) ? this.a.getAdItemId(i) : this.b.getItemId(this.a.getOriginalPosition(i));
        }
        return -1L;
    }

    public int getItemViewType(int i) {
        if (this.a.isAdPosition(i)) {
            return -42;
        }
        return this.b.getItemViewType(this.a.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.a.getOriginalPosition(i);
    }

    public void loadAds() {
        this.a.loadAds();
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdClicked(MaxAd maxAd) {
        MaxAdPlacer.Listener listener = this.f;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdLoaded(int i) {
        notifyItemChanged(i);
        MaxAdPlacer.Listener listener = this.f;
        if (listener != null) {
            listener.onAdLoaded(i);
        }
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdRemoved(int i) {
        MaxAdPlacer.Listener listener = this.f;
        if (listener != null) {
            listener.onAdRemoved(i);
        }
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdRevenuePaid(MaxAd maxAd) {
        MaxAdPlacer.Listener listener = this.f;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.d = recyclerView;
        hl hlVar = new hl(recyclerView);
        this.e = hlVar;
        hlVar.a(new a());
    }

    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        this.e.a(viewHolder.itemView, i);
        if (!this.a.isAdPosition(i)) {
            this.b.onBindViewHolder(viewHolder, this.a.getOriginalPosition(i));
            return;
        }
        AppLovinSdkUtils.Size adSize = this.a.getAdSize(i, a(i));
        ViewGroup containerView = ((MaxAdRecyclerViewHolder) viewHolder).getContainerView();
        ViewGroup.LayoutParams layoutParams = containerView.getLayoutParams();
        if (adSize == AppLovinSdkUtils.Size.ZERO) {
            layoutParams.width = -2;
            layoutParams.height = -2;
            containerView.setLayoutParams(layoutParams);
        } else {
            layoutParams.width = adSize.getWidth() < 0 ? adSize.getWidth() : AppLovinSdkUtils.dpToPx(containerView.getContext(), adSize.getWidth());
            layoutParams.height = adSize.getHeight() < 0 ? adSize.getHeight() : AppLovinSdkUtils.dpToPx(containerView.getContext(), adSize.getHeight());
            containerView.setLayoutParams(layoutParams);
            this.a.renderAd(i, containerView);
        }
    }

    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != -42) {
            return this.b.onCreateViewHolder(viewGroup, i);
        }
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.max_native_ad_recycler_view_item, viewGroup, false);
        ViewGroup.LayoutParams layoutParams = viewInflate.getLayoutParams();
        RecyclerView.LayoutManager layoutManager = this.d.getLayoutManager();
        if (layoutManager == null || !layoutManager.canScrollHorizontally()) {
            layoutParams.width = -1;
            layoutParams.height = -2;
        } else {
            layoutParams.width = -2;
            layoutParams.height = -1;
        }
        viewInflate.setLayoutParams(layoutParams);
        return new MaxAdRecyclerViewHolder(viewInflate);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.d = null;
        hl hlVar = this.e;
        if (hlVar != null) {
            hlVar.a();
            this.e = null;
        }
    }

    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        return viewHolder instanceof MaxAdRecyclerViewHolder ? super.onFailedToRecycleView(viewHolder) : this.b.onFailedToRecycleView(viewHolder);
    }

    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MaxAdRecyclerViewHolder) {
            super.onViewAttachedToWindow(viewHolder);
        } else {
            this.b.onViewAttachedToWindow(viewHolder);
        }
    }

    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MaxAdRecyclerViewHolder) {
            super.onViewDetachedFromWindow(viewHolder);
        } else {
            this.b.onViewDetachedFromWindow(viewHolder);
        }
    }

    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        hl hlVar = this.e;
        if (hlVar != null) {
            hlVar.b(viewHolder.itemView);
        }
        if (!(viewHolder instanceof MaxAdRecyclerViewHolder)) {
            this.b.onViewRecycled(viewHolder);
            return;
        }
        if (this.a.isFilledPosition(viewHolder.getBindingAdapterPosition())) {
            ((MaxAdRecyclerViewHolder) viewHolder).getContainerView().removeAllViews();
        }
        super.onViewRecycled(viewHolder);
    }

    public void setAdPositionBehavior(AdPositionBehavior adPositionBehavior) {
        this.h = adPositionBehavior;
    }

    public void setHasStableIds(boolean z) {
        super.setHasStableIds(z);
        this.b.unregisterAdapterDataObserver(this.c);
        this.b.setHasStableIds(z);
        this.b.registerAdapterDataObserver(this.c);
    }

    public void setListener(MaxAdPlacer.Listener listener) {
        this.f = listener;
    }

    public void setLookAhead(int i) {
        this.g = i;
    }

    private int a(int i) {
        int iPxToDp = AppLovinSdkUtils.pxToDp(this.d.getContext(), this.d.getWidth());
        GridLayoutManager layoutManager = this.d.getLayoutManager();
        if (!(layoutManager instanceof GridLayoutManager)) {
            return layoutManager instanceof StaggeredGridLayoutManager ? iPxToDp / ((StaggeredGridLayoutManager) layoutManager).getSpanCount() : iPxToDp;
        }
        GridLayoutManager gridLayoutManager = layoutManager;
        return (iPxToDp / gridLayoutManager.getSpanCount()) * gridLayoutManager.getSpanSizeLookup().getSpanSize(i);
    }
}
