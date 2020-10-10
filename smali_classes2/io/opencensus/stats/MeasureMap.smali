.class public abstract Lio/opencensus/stats/MeasureMap;
.super Ljava/lang/Object;
.source "MeasureMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;
.end method

.method public abstract put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;
.end method

.method public abstract record(Lio/opencensus/tags/TagContext;)V
.end method
