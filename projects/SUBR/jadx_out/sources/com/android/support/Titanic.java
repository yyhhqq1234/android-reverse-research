package com.android.support;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Build;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public class Titanic {
    private Animator.AnimatorListener animatorListener;
    private AnimatorSet animatorSet;
    float LEFT = 2000;
    float RIGHT = 0;
    long setDuration = 20000;

    public Animator.AnimatorListener getAnimatorListener() {
        return this.animatorListener;
    }

    public void setAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.animatorListener = animatorListener;
    }

    public void start(TitanicTextView titanicTextView) {
        AnonymousClass100000001 anonymousClass100000001 = new AnonymousClass100000001(this, titanicTextView);
        if (!titanicTextView.isSetUp()) {
            titanicTextView.setAnimationSetupCallback(new AnimationSetupCallback(this, anonymousClass100000001) { // from class: com.android.support.Titanic.100000002
                private final Titanic this$0;
                private final Runnable val$animate;

                {
                    this.this$0 = this;
                    this.val$animate = anonymousClass100000001;
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicButton titanicButton) {
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicTextView titanicTextView2) {
                    this.val$animate.run();
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicTextView2 titanicTextView2) {
                    this.val$animate.run();
                }
            });
        } else {
            anonymousClass100000001.run();
        }
    }

    /* JADX INFO: renamed from: com.android.support.Titanic$100000001, reason: invalid class name */
    class AnonymousClass100000001 implements Runnable {
        private final Titanic this$0;
        private final TitanicTextView val$textView;

        AnonymousClass100000001(Titanic titanic, TitanicTextView titanicTextView) {
            this.this$0 = titanic;
            this.val$textView = titanicTextView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$textView.setSinking(true);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.val$textView, "maskX", this.this$0.LEFT, this.this$0.RIGHT);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setDuration(this.this$0.setDuration);
            objectAnimatorOfFloat.setStartDelay(0);
            int height = this.val$textView.getHeight();
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.val$textView, "maskY", height / 2, (-height) / 2);
            objectAnimatorOfFloat2.setRepeatCount(-1);
            objectAnimatorOfFloat2.setRepeatMode(2);
            objectAnimatorOfFloat2.setDuration(10000);
            objectAnimatorOfFloat2.setStartDelay(0);
            this.this$0.animatorSet = new AnimatorSet();
            this.this$0.animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.this$0.animatorSet.setInterpolator(new LinearInterpolator());
            this.this$0.animatorSet.addListener(new Animator.AnimatorListener(this, this.val$textView) { // from class: com.android.support.Titanic.100000001.100000000
                private final AnonymousClass100000001 this$0;
                private final TitanicTextView val$textView;

                {
                    this.this$0 = this;
                    this.val$textView = titanicTextView;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.val$textView.setSinking(false);
                    if (Build.VERSION.SDK_INT < 16) {
                        this.val$textView.postInvalidate();
                    } else {
                        this.val$textView.postInvalidateOnAnimation();
                    }
                    this.this$0.this$0.animatorSet = (AnimatorSet) null;
                }
            });
            if (this.this$0.animatorListener != null) {
                this.this$0.animatorSet.addListener(this.this$0.animatorListener);
            }
            this.this$0.animatorSet.start();
        }
    }

    public void start(TitanicTextView2 titanicTextView2) {
        AnonymousClass100000004 anonymousClass100000004 = new AnonymousClass100000004(this, titanicTextView2);
        if (!titanicTextView2.isSetUp()) {
            titanicTextView2.setAnimationSetupCallback(new AnimationSetupCallback(this, anonymousClass100000004) { // from class: com.android.support.Titanic.100000005
                private final Titanic this$0;
                private final Runnable val$animate;

                {
                    this.this$0 = this;
                    this.val$animate = anonymousClass100000004;
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicButton titanicButton) {
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicTextView titanicTextView) {
                    this.val$animate.run();
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicTextView2 titanicTextView3) {
                    this.val$animate.run();
                }
            });
        } else {
            anonymousClass100000004.run();
        }
    }

    /* JADX INFO: renamed from: com.android.support.Titanic$100000004, reason: invalid class name */
    class AnonymousClass100000004 implements Runnable {
        private final Titanic this$0;
        private final TitanicTextView2 val$textView;

        AnonymousClass100000004(Titanic titanic, TitanicTextView2 titanicTextView2) {
            this.this$0 = titanic;
            this.val$textView = titanicTextView2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$textView.setSinking(true);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.val$textView, "maskX", this.this$0.LEFT, this.this$0.RIGHT);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setDuration(this.this$0.setDuration);
            objectAnimatorOfFloat.setStartDelay(0);
            int height = this.val$textView.getHeight();
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.val$textView, "maskY", height / 2, (-height) / 2);
            objectAnimatorOfFloat2.setRepeatCount(-1);
            objectAnimatorOfFloat2.setRepeatMode(2);
            objectAnimatorOfFloat2.setDuration(10000);
            objectAnimatorOfFloat2.setStartDelay(0);
            this.this$0.animatorSet = new AnimatorSet();
            this.this$0.animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.this$0.animatorSet.setInterpolator(new LinearInterpolator());
            this.this$0.animatorSet.addListener(new Animator.AnimatorListener(this, this.val$textView) { // from class: com.android.support.Titanic.100000004.100000003
                private final AnonymousClass100000004 this$0;
                private final TitanicTextView2 val$textView;

                {
                    this.this$0 = this;
                    this.val$textView = titanicTextView2;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.val$textView.setSinking(false);
                    if (Build.VERSION.SDK_INT < 16) {
                        this.val$textView.postInvalidate();
                    } else {
                        this.val$textView.postInvalidateOnAnimation();
                    }
                    this.this$0.this$0.animatorSet = (AnimatorSet) null;
                }
            });
            if (this.this$0.animatorListener != null) {
                this.this$0.animatorSet.addListener(this.this$0.animatorListener);
            }
            this.this$0.animatorSet.start();
        }
    }

    public void start(TitanicButton titanicButton) {
        AnonymousClass100000007 anonymousClass100000007 = new AnonymousClass100000007(this, titanicButton);
        if (!titanicButton.isSetUp()) {
            titanicButton.setAnimationSetupCallback(new AnimationSetupCallback(this, anonymousClass100000007) { // from class: com.android.support.Titanic.100000008
                private final Titanic this$0;
                private final Runnable val$animate;

                {
                    this.this$0 = this;
                    this.val$animate = anonymousClass100000007;
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicTextView2 titanicTextView2) {
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicTextView titanicTextView) {
                }

                @Override // com.android.support.AnimationSetupCallback
                public void onSetupAnimation(TitanicButton titanicButton2) {
                    this.val$animate.run();
                }
            });
        } else {
            anonymousClass100000007.run();
        }
    }

    /* JADX INFO: renamed from: com.android.support.Titanic$100000007, reason: invalid class name */
    class AnonymousClass100000007 implements Runnable {
        private final Titanic this$0;
        private final TitanicButton val$Button;

        AnonymousClass100000007(Titanic titanic, TitanicButton titanicButton) {
            this.this$0 = titanic;
            this.val$Button = titanicButton;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$Button.setSinking(true);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.val$Button, "maskX", this.this$0.LEFT, this.this$0.RIGHT);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setDuration(this.this$0.setDuration);
            objectAnimatorOfFloat.setStartDelay(0);
            int height = this.val$Button.getHeight();
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.val$Button, "maskY", height / 2, (-height) / 2);
            objectAnimatorOfFloat2.setRepeatCount(-1);
            objectAnimatorOfFloat2.setRepeatMode(2);
            objectAnimatorOfFloat2.setDuration(10000);
            objectAnimatorOfFloat2.setStartDelay(0);
            this.this$0.animatorSet = new AnimatorSet();
            this.this$0.animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.this$0.animatorSet.setInterpolator(new LinearInterpolator());
            this.this$0.animatorSet.addListener(new Animator.AnimatorListener(this, this.val$Button) { // from class: com.android.support.Titanic.100000007.100000006
                private final AnonymousClass100000007 this$0;
                private final TitanicButton val$Button;

                {
                    this.this$0 = this;
                    this.val$Button = titanicButton;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.val$Button.setSinking(false);
                    if (Build.VERSION.SDK_INT < 16) {
                        this.val$Button.postInvalidate();
                    } else {
                        this.val$Button.postInvalidateOnAnimation();
                    }
                    this.this$0.this$0.animatorSet = (AnimatorSet) null;
                }
            });
            if (this.this$0.animatorListener != null) {
                this.this$0.animatorSet.addListener(this.this$0.animatorListener);
            }
            this.this$0.animatorSet.start();
        }
    }

    public void cancel() {
        if (this.animatorSet != null) {
            this.animatorSet.cancel();
        }
    }
}
