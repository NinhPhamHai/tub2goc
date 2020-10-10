.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$569VJZcltidQHrhj2mjZX3CexfY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$569VJZcltidQHrhj2mjZX3CexfY;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$569VJZcltidQHrhj2mjZX3CexfY;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
