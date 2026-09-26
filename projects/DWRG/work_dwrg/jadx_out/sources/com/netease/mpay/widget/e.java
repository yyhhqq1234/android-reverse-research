package com.netease.mpay.widget;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public class e extends Dialog {

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(String str);
    }

    public e(Activity activity) {
        super(activity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EditText editText, View view) {
        if (editText.getText().toString().equals("") || !editText.isFocused()) {
            view.setVisibility(8);
        } else {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to check method usage
    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.MethodNode.getTopParentClass()" because "m" is null
    	at jadx.core.codegen.ClassGen.lambda$skipMethod$4(ClassGen.java:360)
    	at java.base/java.util.stream.ReferencePipeline$2$1.accept(ReferencePipeline.java:178)
    	at java.base/java.util.ArrayList$ArrayListSpliterator.forEachRemaining(ArrayList.java:1625)
    	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:509)
    	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:499)
    	at java.base/java.util.stream.ReduceOps$ReduceOp.evaluateSequential(ReduceOps.java:921)
    	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
    	at java.base/java.util.stream.ReferencePipeline.collect(ReferencePipeline.java:682)
    	at jadx.core.codegen.ClassGen.skipMethod(ClassGen.java:361)
    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:327)
    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
     */
    public static /* synthetic */ void a(e eVar, EditText editText, View view) {
        eVar.a(editText, view);
    }

    public void a(String str, a aVar) {
        super.show();
        findViewById(RIdentifier.f.T).setOnClickListener(new f(this, aVar));
        ((TextView) findViewById(RIdentifier.f.dm)).setText(str);
        EditText editText = (EditText) findViewById(RIdentifier.f.bI);
        View findViewById = findViewById(RIdentifier.f.bJ);
        editText.setHint(RIdentifier.h.I);
        editText.addTextChangedListener(new g(this, editText, findViewById));
        h hVar = new h(this, aVar, editText);
        editText.setOnFocusChangeListener(new i(this, editText, findViewById));
        editText.setOnEditorActionListener(new bf.b(hVar));
        findViewById.setOnClickListener(new j(this, editText));
        findViewById(RIdentifier.f.r).setOnClickListener(new k(this, aVar));
        findViewById(RIdentifier.f.x).setOnClickListener(hVar);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setGravity(17);
        requestWindowFeature(1);
        setContentView(RIdentifier.g.r);
    }
}
