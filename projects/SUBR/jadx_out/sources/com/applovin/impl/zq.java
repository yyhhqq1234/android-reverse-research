package com.applovin.impl;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import androidx.core.view.GravityCompat;

/* JADX INFO: loaded from: classes.dex */
public abstract class zq {
    public static boolean b(int i) {
        return i == 0;
    }

    public static void a(View view, long j) {
        a(view, j, (Runnable) null);
    }

    class a implements Animation.AnimationListener {
        final /* synthetic */ View a;
        final /* synthetic */ Runnable b;

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        a(View view, Runnable runnable) {
            this.a = view;
            this.b = runnable;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.a.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Runnable runnable = this.b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void a(View view, long j, Runnable runnable) {
        view.setVisibility(4);
        view.bringToFront();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new a(view, runnable));
        view.startAnimation(alphaAnimation);
    }

    public static void b(View view, long j, Runnable runnable) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new b(view, runnable));
        view.startAnimation(alphaAnimation);
    }

    class b implements Animation.AnimationListener {
        final /* synthetic */ View a;
        final /* synthetic */ Runnable b;

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        b(View view, Runnable runnable) {
            this.a = view;
            this.b = runnable;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.a.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.a.setVisibility(4);
            Runnable runnable = this.b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void c(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0038  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    public static int[] a(int i, int i2, int i3) {
        if (i == 0) {
            return new int[]{i2, i3};
        }
        if ((i & 119) == 119) {
            return new int[]{13};
        }
        if ((i & 112) == 112) {
            i2 = 15;
        } else if ((i & 48) == 48) {
            i2 = 10;
        } else if ((i & 80) == 80) {
            i2 = 12;
        } else if ((i & 16) == 16) {
            i2 = 15;
        }
        if ((i & 7) == 7) {
            i3 = 14;
        } else if (z3.d() && (i & GravityCompat.START) == 8388611) {
            i3 = 20;
        } else if ((i & 3) == 3) {
            i3 = 9;
        } else if (z3.d() && (i & GravityCompat.END) == 8388613) {
            i3 = 21;
        } else if ((i & 5) == 5) {
            i3 = 11;
        } else if ((i & 1) == 1) {
            i3 = 14;
        }
        return new int[]{i3, i2};
    }

    public static View b(View view) {
        View rootView;
        if (view == null || (rootView = view.getRootView()) == null) {
            return null;
        }
        View viewFindViewById = rootView.findViewById(R.id.content);
        return viewFindViewById != null ? viewFindViewById : rootView;
    }

    public static String a(int i) {
        if (i == 0) {
            return "VISIBLE";
        }
        if (i == 4) {
            return "INVISIBLE";
        }
        return i == 8 ? "GONE" : String.valueOf(i);
    }

    public static boolean a(int i, int i2) {
        return b(i) != b(i2);
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (a(view, viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean a(View view, Activity activity) {
        if (activity != null && view != null) {
            Window window = activity.getWindow();
            if (window != null) {
                return a(view, window.getDecorView());
            }
            View viewFindViewById = activity.findViewById(R.id.content);
            if (viewFindViewById != null) {
                return a(view, viewFindViewById.getRootView());
            }
        }
        return false;
    }

    public static Activity a(View view, com.applovin.impl.sdk.j jVar) {
        if (view == null) {
            return null;
        }
        for (int i = 0; i < 1000; i++) {
            try {
                Context context = view.getContext();
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                jVar.I();
                if (com.applovin.impl.sdk.n.a()) {
                    jVar.I().a("ViewUtils", "Encountered error while retrieving activity from view", th);
                }
            }
        }
        return null;
    }

    public static String a(View view) {
        return view.getClass().getName() + '@' + Integer.toHexString(view.hashCode());
    }
}
