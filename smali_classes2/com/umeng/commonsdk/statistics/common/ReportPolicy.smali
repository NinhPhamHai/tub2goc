.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.super Ljava/lang/Object;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    }
.end annotation


# direct methods
.method public static isValid(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
