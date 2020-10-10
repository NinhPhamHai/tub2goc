.class final Lio/opencensus/tags/NoopTags$NoopTagger;
.super Lio/opencensus/tags/Tagger;
.source "NoopTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/tags/NoopTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopTagger"
.end annotation


# static fields
.field static final INSTANCE:Lio/opencensus/tags/Tagger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lio/opencensus/tags/NoopTags$NoopTagger;

    invoke-direct {v0}, Lio/opencensus/tags/NoopTags$NoopTagger;-><init>()V

    sput-object v0, Lio/opencensus/tags/NoopTags$NoopTagger;->INSTANCE:Lio/opencensus/tags/Tagger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lio/opencensus/tags/Tagger;-><init>()V

    return-void
.end method


# virtual methods
.method public empty()Lio/opencensus/tags/TagContext;
    .locals 1

    .line 135
    invoke-static {}, Lio/opencensus/tags/NoopTags;->getNoopTagContext()Lio/opencensus/tags/TagContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTagContext()Lio/opencensus/tags/TagContext;
    .locals 1

    .line 140
    invoke-static {}, Lio/opencensus/tags/NoopTags;->getNoopTagContext()Lio/opencensus/tags/TagContext;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder(Lio/opencensus/tags/TagContext;)Lio/opencensus/tags/TagContextBuilder;
    .locals 1

    const-string v0, "tags"

    .line 150
    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lio/opencensus/tags/NoopTags;->getNoopTagContextBuilder()Lio/opencensus/tags/TagContextBuilder;

    move-result-object p1

    return-object p1
.end method
