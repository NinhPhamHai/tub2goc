.class public Lch/blinkenlights/android/vanilla/TimestampedObject;
.super Ljava/lang/Object;
.source "TimestampedObject.java"


# instance fields
.field public object:Ljava/lang/Object;

.field public uptime:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TimestampedObject;->object:Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/TimestampedObject;->uptime:J

    return-void
.end method
