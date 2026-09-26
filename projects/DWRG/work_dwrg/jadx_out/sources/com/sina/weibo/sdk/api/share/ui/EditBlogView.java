package com.sina.weibo.sdk.api.share.ui;

import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class EditBlogView extends EditText {
    private boolean canSelectionChanged;
    private int count;
    private Context ctx;
    private List<OnSelectionListener> listeners;
    private OnEnterListener mOnEnterListener;

    /* loaded from: classes.dex */
    public interface OnEnterListener {
        void onEnterKey();
    }

    /* loaded from: classes.dex */
    public interface OnSelectionListener {
        void onSelectionChanged(int i, int i2);
    }

    public EditBlogView(Context context) {
        super(context);
        this.canSelectionChanged = true;
        init();
    }

    public EditBlogView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.canSelectionChanged = true;
        init();
    }

    public EditBlogView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.canSelectionChanged = true;
        init();
    }

    private void init() {
        this.ctx = getContext();
        this.listeners = new ArrayList();
    }

    public void setOnSelectionListener(OnSelectionListener listener) {
        this.listeners.add(listener);
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int selStart, int selEnd) {
        super.onSelectionChanged(selStart, selEnd);
        if (this.canSelectionChanged && this.listeners != null && !this.listeners.isEmpty()) {
            for (OnSelectionListener l : this.listeners) {
                l.onSelectionChanged(selStart, selEnd);
            }
        }
    }

    public void enableSelectionChanged(boolean enable) {
        this.canSelectionChanged = enable;
    }

    public void setOnEnterListener(OnEnterListener listener) {
        this.mOnEnterListener = listener;
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 66 && this.mOnEnterListener != null) {
            this.mOnEnterListener.onEnterKey();
        }
        return super.onKeyDown(keyCode, event);
    }

    public int correctPosition(int pos) {
        Object[] objs;
        if (pos != -1) {
            Editable editable = getText();
            int length = editable.length();
            if (pos < length && (objs = editable.getSpans(pos, pos, ImageSpan.class)) != null && objs.length != 0 && pos != editable.getSpanStart(objs[0])) {
                return editable.getSpanEnd(objs[0]);
            }
            return pos;
        }
        return pos;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        InputConnection inputConnection = new InputConnectionWrapper(super.onCreateInputConnection(outAttrs), false) { // from class: com.sina.weibo.sdk.api.share.ui.EditBlogView.1
            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean commitText(CharSequence text, int newCursorPosition) {
                Editable content = EditBlogView.this.getEditableText();
                new String(content.toString());
                int start = Selection.getSelectionStart(content);
                int end = Selection.getSelectionEnd(content);
                if (start != -1 && end != -1) {
                    int correctStart = EditBlogView.this.correctPosition(start);
                    int correctEnd = EditBlogView.this.correctPosition(end);
                    if (correctStart > correctEnd) {
                        correctStart = correctEnd;
                        correctEnd = correctStart;
                    }
                    if (correctStart != start || correctEnd != end) {
                        Selection.setSelection(content, correctStart, correctEnd);
                    }
                    if (correctStart != correctEnd) {
                        EditBlogView.this.getText().delete(correctStart, correctEnd);
                    }
                }
                return super.commitText(text, newCursorPosition);
            }

            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean setComposingText(CharSequence text, int newCursorPosition) {
                Editable content = EditBlogView.this.getEditableText();
                new String(content.toString());
                int start = Selection.getSelectionStart(content);
                int end = Selection.getSelectionEnd(content);
                if (start != -1 && end != -1) {
                    int correctStart = EditBlogView.this.correctPosition(start);
                    int correctEnd = EditBlogView.this.correctPosition(end);
                    if (correctStart > correctEnd) {
                        correctStart = correctEnd;
                        correctEnd = correctStart;
                    }
                    if (correctStart != start || correctEnd != end) {
                        Selection.setSelection(content, correctStart, correctEnd);
                    }
                    if (correctStart != correctEnd) {
                        EditBlogView.this.getText().delete(correctStart, correctEnd);
                    }
                }
                return super.setComposingText(text, newCursorPosition);
            }
        };
        return inputConnection;
    }
}
