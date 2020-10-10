.class public abstract Lio/opencensus/tags/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field private static final METADATA_UNLIMITED_PROPAGATION:Lio/opencensus/tags/TagMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lio/opencensus/tags/TagMetadata$TagTtl;->UNLIMITED_PROPAGATION:Lio/opencensus/tags/TagMetadata$TagTtl;

    .line 33
    invoke-static {v0}, Lio/opencensus/tags/TagMetadata;->create(Lio/opencensus/tags/TagMetadata$TagTtl;)Lio/opencensus/tags/TagMetadata;

    move-result-object v0

    sput-object v0, Lio/opencensus/tags/Tag;->METADATA_UNLIMITED_PROPAGATION:Lio/opencensus/tags/TagMetadata;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
