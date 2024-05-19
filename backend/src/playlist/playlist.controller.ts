import { Controller, Get, Post, Body, Patch, Param, Delete, Req } from '@nestjs/common';
import { PlaylistService } from './playlist.service';
import { Request } from 'express'

@Controller('playlist')
export class PlaylistController {
  constructor(private readonly playlistService: PlaylistService) { }

  @Post()
  create(@Req() req: Request) {
    return this.playlistService.create(req);
  }

  @Get()
  findAll(@Req() req: Request) {
    return this.playlistService.findAll(req);
  }

  @Get(':id')
  findOne(@Param('id') id: string, @Req() req: Request) {
    return this.playlistService.findOne(req, id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Req() req: Request) {
    return this.playlistService.update(req, id);
  }

  @Delete(':id')
  remove(@Param('id') id: string, @Req() req: Request) {
    return this.playlistService.remove(req, id);
  }
}
