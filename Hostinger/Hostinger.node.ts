import {
	INodeType,
	INodeTypeDescription,
	IExecuteFunctions,
} from 'n8n-workflow';

export class Hostinger implements INodeType {
	description: INodeTypeDescription = {
		displayName: 'Hostinger',
		name: 'hostinger',
		icon: 'file:Hostinger.png',
		group: ['transform'],
		version: 1,
		description: 'Interact with Hostinger API',
		defaults: {
			name: 'Hostinger',
		},
		inputs: ['main'],
		outputs: ['main'],
		credentials: [],
		properties: [
			{
				displayName: 'Example Field',
				name: 'exampleField',
				type: 'string',
				default: '',
				description: 'Just a placeholder field',
			},
		],
	};

	async execute(this: IExecuteFunctions
