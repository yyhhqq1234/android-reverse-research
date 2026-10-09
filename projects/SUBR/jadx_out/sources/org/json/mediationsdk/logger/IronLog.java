package org.json.mediationsdk.logger;

import org.json.ik;

/* JADX INFO: loaded from: classes3.dex */
public enum IronLog {
    API(IronSourceLogger.IronSourceTag.API),
    CALLBACK(IronSourceLogger.IronSourceTag.CALLBACK),
    ADAPTER_API(IronSourceLogger.IronSourceTag.ADAPTER_API),
    ADAPTER_CALLBACK(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK),
    NETWORK(IronSourceLogger.IronSourceTag.NETWORK),
    INTERNAL(IronSourceLogger.IronSourceTag.INTERNAL),
    NATIVE(IronSourceLogger.IronSourceTag.NATIVE),
    EVENT(IronSourceLogger.IronSourceTag.EVENT);

    IronSourceLogger.IronSourceTag a;

    IronLog(IronSourceLogger.IronSourceTag ironSourceTag) {
        this.a = ironSourceTag;
    }

    public void error() {
        IronSourceLoggerManager.getLogger().a(this.a, new ik("", 3));
    }

    public void error(String str) {
        IronSourceLoggerManager.getLogger().a(this.a, new ik(str, 3));
    }

    public void info() {
        IronSourceLoggerManager.getLogger().a(this.a, new ik("", 1));
    }

    public void info(String str) {
        IronSourceLoggerManager.getLogger().a(this.a, new ik(str, 1));
    }

    public void verbose() {
        IronSourceLoggerManager.getLogger().a(this.a, new ik("", 0));
    }

    public void verbose(String str) {
        IronSourceLoggerManager.getLogger().a(this.a, new ik(str, 0));
    }

    public void warning() {
        IronSourceLoggerManager.getLogger().a(this.a, new ik("", 2));
    }

    public void warning(String str) {
        IronSourceLoggerManager.getLogger().a(this.a, new ik(str, 2));
    }
}
