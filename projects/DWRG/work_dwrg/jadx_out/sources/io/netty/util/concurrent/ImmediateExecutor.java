package io.netty.util.concurrent;

import com.netease.epay.sdk.base.hybrid.common.JsConstant;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ImmediateExecutor implements Executor {
    public static final ImmediateExecutor INSTANCE = new ImmediateExecutor();

    private ImmediateExecutor() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        if (command == null) {
            throw new NullPointerException(JsConstant.COMMAND);
        }
        command.run();
    }
}
