.class synthetic Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder$1;
.super Ljava/lang/Object;
.source "LoadingHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$floatingtunes$youtubeplayer$topmusic$adapter$LoadState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->values()[Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder$1;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$adapter$LoadState:[I

    :try_start_0
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder$1;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$adapter$LoadState:[I

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->LOADING:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder$1;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$adapter$LoadState:[I

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->FAILED:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder$1;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$adapter$LoadState:[I

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
