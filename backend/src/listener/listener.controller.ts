import { Controller, Get, Post, Body, Patch, Param, Delete, Req } from '@nestjs/common';
import { ListenerService } from './listener.service';
import { Request } from 'express'

@Controller('listener')
export class ListenerController {
  constructor(private readonly listenerService: ListenerService) { }

  @Get()
  findAll(@Req() req: Request) {
    return this.listenerService.findAll(req);
  }

  @Patch('update')
  updateListener(@Req() req: Request) {
    return this.listenerService.update(req);
  }

  @Delete(':id')
  remove(@Param('id') id: string, @Req() req: Request) {
    return this.listenerService.remove(req, id);
  }
}
