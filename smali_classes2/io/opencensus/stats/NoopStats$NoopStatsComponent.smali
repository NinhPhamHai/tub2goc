.class final Lio/opencensus/stats/NoopStats$NoopStatsComponent;
.super Lio/opencensus/stats/StatsComponent;
.source "NoopStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/stats/NoopStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopStatsComponent"
.end annotation


# instance fields
.field private final viewManager:Lio/opencensus/stats/ViewManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lio/opencensus/stats/StatsComponent;-><init>()V

    .line 88
    invoke-static {}, Lio/opencensus/stats/NoopStats;->newNoopViewManager()Lio/opencensus/stats/ViewManager;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/stats/NoopStats$NoopStatsComponent;->viewManager:Lio/opencensus/stats/ViewManager;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/stats/NoopStats$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lio/opencensus/stats/NoopStats$NoopStatsComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatsRecorder()Lio/opencensus/stats/StatsRecorder;
    .locals 1

    .line 98
    invoke-static {}, Lio/opencensus/stats/NoopStats;->getNoopStatsRecorder()Lio/opencensus/stats/StatsRecorder;

    move-result-object v0

    return-object v0
.end method
