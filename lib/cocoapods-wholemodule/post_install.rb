require 'cocoapods-core'

module CocoaPodsWholeModule
	
	Pod::HooksManager.register('cocoapods-wholemodule', :post_install) do |installer, options|
		whole_module_configs = ['Release']
		if options[:wholemodule].is_a?(Array)
			whole_module_configs = options[:wholemodule]
		elsif options[:wholemodule].is_a?(String)
			whole_module_configs = [options[:wholemodule]]
		end

		installer.pods_project.targets.each do |target|
			target.build_configurations.each do |config|
				if whole_module_configs.include?(config.name)
					config.build_settings['SWIFT_COMPILATION_MODE'] = 'wholemodule'
				else
					config.build_settings['SWIFT_COMPILATION_MODE'] = 'singlefile'
				end
			end
		end
		installer.pods_project.save

	end

end
