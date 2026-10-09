.class public Lcom/netease/epay/sdk/h5c/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;,
        Lcom/netease/epay/sdk/h5c/Constants$Extra;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SDK.H5C"

.field public static final PERFORMANCE_JS:Ljava/lang/String; = "// performanceMetrics.js\n(function(performanceMetricsFunctionName) {\n    const metricsKey = performanceMetricsFunctionName + \"Metrics\";\n    window[metricsKey] = {\n        FP: 0,\n        FCP: 0,\n        LCP: 0,\n        CLS: 0\n    };\n\n    console.log(\"Starting performance metrics collection\");\n\n    // First Paint and First Contentful Paint\n    const paintObserver = new PerformanceObserver((entries, observer) => {\n        entries.getEntries().forEach(entry => {\n            if (entry.name === \'first-paint\') {\n                window[metricsKey].FP = entry.startTime;\n                console.log(`FP: ${window[metricsKey].FP}`);\n            } else if (entry.name === \'first-contentful-paint\') {\n                window[metricsKey].FCP = entry.startTime;\n                console.log(`FCP: ${window[metricsKey].FCP}`);\n                observer.disconnect(); // \u505c\u6b62\u89c2\u5bdf paint \u6761\u76ee\n            }\n        });\n    });\n    paintObserver.observe({ type: \'paint\', buffered: true });\n\n    // Largest Contentful Paint\n    const lcpObserver = new PerformanceObserver((entries) => {\n        entries.getEntries().forEach(entry => {\n            window[metricsKey].LCP = entry.startTime;\n            console.log(`LCP: ${window[metricsKey].LCP}`);\n        });\n    });\n    lcpObserver.observe({ type: \'largest-contentful-paint\', buffered: true });\n\n    // Cumulative Layout Shift\n    const clsObserver = new PerformanceObserver((entries) => {\n        let cls = 0;\n        entries.getEntries().forEach(entry => {\n            if (!entry.hadRecentInput) {\n                cls += entry.value;\n                console.log(`CLS entry: ${entry.value}, total CLS: ${cls}`);\n            }\n        });\n        window[metricsKey].CLS = cls;\n        console.log(`Final CLS: ${window[metricsKey].CLS}`);\n    });\n    clsObserver.observe({ type: \'layout-shift\', buffered: true });\n\n    // \u5ef6\u8fdf\u4e00\u6bb5\u65f6\u95f4\u540e\u505c\u6b62\u89c2\u5bdf LCP \u548c CLS\n    setTimeout(() => {\n        lcpObserver.disconnect();\n        console.log(\'LCP observer disconnected\');\n        clsObserver.disconnect();\n        console.log(\'CLS observer disconnected\');\n    }, 5000); // 5\u79d2\u540e\u505c\u6b62\u89c2\u5bdf\n\n    // \u5c06\u6307\u6807\u5b58\u50a8\u5728\u4e00\u4e2a\u5c40\u90e8\u53d8\u91cf\u4e2d\n    window[performanceMetricsFunctionName] = function() {\n        return window[metricsKey];\n    };\n})(\'__PLACEHOLDER_FUNCTION_NAME__\');\n"

.field public static final PERFORMANCE_RESULT_JS:Ljava/lang/String; = "// getPerformanceMetricsResult.js\n(function(performanceMetricsFunctionName) {\n  try {\n    if (window[performanceMetricsFunctionName]) {\n      return window[performanceMetricsFunctionName]();\n    }\n  } catch(e) {}\n  return null;\n})(\'__PLACEHOLDER_FUNCTION_NAME__\');"

.field public static final offlinePkgCheckUpdate:Ljava/lang/String; = "offline_package_check_update.htm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
